package org.verapdf.ui.syntaxcoloring;

import org.eclipse.xtext.ui.editor.syntaxcoloring.DefaultAntlrTokenToAttributeIdMapper;
import org.eclipse.xtext.ui.editor.syntaxcoloring.DefaultHighlightingConfiguration;

public class AntlrTokenToAttributeIdMapper extends DefaultAntlrTokenToAttributeIdMapper {
	
	@Override
	protected String calculateId(String tokenName, int tokenType) {
		if("RULE_COMMENT".equals(tokenName)) {
			return DefaultHighlightingConfiguration.COMMENT_ID;
		}
		return super.calculateId(tokenName, tokenType);
	}

}
