<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.header-login">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-header-login" ox-mod="header-login">
        	<xsl:variable name="entry" select="data/ui-entry/i[1]"/>
        	<span class="left">
        		<a href="">
            		<xsl:if test="$entry/icon and $entry/icon !=''">
            			<img class="logo" src="{$entry/icon}"/>
            		</xsl:if>
            		<sub>
	            		<xsl:value-of select="$entry/title"/>
	            	</sub>
	            </a>
        	</span>
        	<span class="right">
        		
        		<xsl:choose>
            		<xsl:when test="login/uid and login/uid !=''">
            			<a href="http://login.openxsl.com">
	            			<img class="avatar" src="http://i.oxm1.cc/uploads/{login/uid}/user/avatar.png@!w60"/>
	            		</a>
            		</xsl:when>
            		<xsl:otherwise>
            			<a href="http://login.openxsl.com/p/oauth2/authorize?autocomplete=1">
	            			<img class="avatar" src="http://i.oxm1.cc/uploads/git/wurui/img/29ubfcc9oTjp0xp9g5Rfbe4A1ce-1000.png"/>
	            		</a>
            		</xsl:otherwise>
            			
            	</xsl:choose>
            	
        	</span>

            
            
            
        </div>
    </xsl:template>
</xsl:stylesheet>
