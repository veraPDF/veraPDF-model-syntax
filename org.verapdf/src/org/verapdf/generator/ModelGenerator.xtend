package org.verapdf.generator

import com.google.inject.Inject
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess
import org.eclipse.xtext.generator.IGenerator
import org.eclipse.xtext.naming.IQualifiedNameProvider
import org.verapdf.model.Entity
import org.verapdf.model.Attribute
import org.verapdf.model.Link
import org.verapdf.model.Property
import org.verapdf.model.Import
import java.util.List
import java.util.ArrayList

/**
 * Generates code from your model files on save.4
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#TutorialCodeGeneration
 */
class ModelGenerator implements IGenerator {
	
	@Inject extension IQualifiedNameProvider

	override void doGenerate(Resource resource, IFileSystemAccess fsa) {
		for(e: resource.allContents.toIterable.filter(Entity)) {
			val imports = resource.allContents.toIterable.filter(Import).toList;
			fsa.generateFile(
				e.fullyQualifiedName.toString("/") + ".java",
				compile(e, imports)
			)
		}
	}
	
	def compile(Entity entity, List<Import> imports) '''
		«IF entity.eContainer.fullyQualifiedName != null»
			package «entity.eContainer.fullyQualifiedName»;
		
		«ENDIF»
		«FOR imp : imports»
			import «imp.importedNamespace»;
		«ENDFOR»
				
		«IF (entity.comment != null)»
		«toJavaDocComment(entity.comment)»
		«ENDIF»
		public interface «entity.name»«IF entity.superType != null» extends «entity.superType.name»«ENDIF» {
		«FOR attribute : entity.attributes»
		
			«attribute.generateGetter»
		«ENDFOR»
		}
	'''
	
	def generateGetter (Attribute attribute) '''
		«IF (attribute.comment != null)»
			«toJavaDocComment(attribute.comment)»
		«ENDIF»
		«IF (attribute instanceof Link)»
			public List<«attribute.type.name»> get«attribute.name»();
		«ENDIF»
		«IF (attribute instanceof Property)»
			public «attribute.type» get«attribute.name»();
		«ENDIF»
	'''
	
	def toJavaDocComment (String comment) '''
		/** «comment.substring(1)» */
	'''

	def toInterfaceName (String name) '''I«name»'''
	
/* 		«IF (attribute.any)»
			public List<«attribute.type.name.toInterfaceName»> get«attribute.name»();
		«ENDIF»
		«IF (attribute.zeroOrOne)»
			@Max(1)
			public List<«attribute.type.name.toInterfaceName»> get«attribute.name»();
		«ENDIF»
*/
}