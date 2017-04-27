<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    
    <xsl:template match="/">
        {
        <xsl:for-each select="settings">
            "settings": {
            <xsl:for-each select="game">
                "game": {
                        "-name": "<xsl:value-of select="@name"/>",
                        "-version": "<xsl:value-of select="@version"/>",
                        "username": "<xsl:value-of select="username"/>",
                        "level": "<xsl:value-of select="level"/>",
                        "mode": "<xsl:value-of select="mode"/>",
                        "practice -enabled": <xsl:value-of select="mode/@enabled"/>,
                        "ball_color":
                            "-red": <xsl:value-of select="ball_color/@red"/>,
                            "-green": <xsl:value-of select="ball_color/@green"/>,
                            "-blue": <xsl:value-of select="ball_color/@blue"/>,
                        "language": "<xsl:value-of select="language"/>"
                        }
                                     
            </xsl:for-each>,
            <xsl:for-each select="multiplayer">
                "multiplayer": {
                        "-port": <xsl:value-of select="@port"/>,
                        "chat -enabled": <xsl:value-of select="chat/@enabled"/>,
                        "server": "<xsl:value-of select="server"/>",
                        "maxping": <xsl:value-of select="maxping"/>,
                        "maxuser": <xsl:value-of select="maxuser"/>
                }
            </xsl:for-each>,
            <xsl:for-each select="video_options">
                "video_options": {
                        "resolution": "<xsl:value-of select="resolution"/>",
                        "fullscreen -enabled": <xsl:value-of select="fullscreen/@enabled"/>,
                        "quality": "<xsl:value-of select="quality"/>",
                        "brightness": <xsl:value-of select="brightness"/>,
                        "contrast": <xsl:value-of select="contrast"/>,
                        "saturation": <xsl:value-of select="saturation"/>,
                        "FPS": <xsl:value-of select="FPS"/>,
                        "display": "<xsl:value-of select="display"/>",
                        "lock_framerate -enabled": <xsl:value-of select="lock_framerate/@ebńabled"/>,
                        "field_of_view": <xsl:value-of select="field_of_view"/>,
                        "draw_distance": <xsl:value-of select="draw_distance"/>,
                        "shadow_distance": <xsl:value-of select="shadow_distance"/>,
                        "shadow_resolution": "<xsl:value-of select="shaow_resolution"/>",
                        "shadow_cascades -enabled": <xsl:value-of select="shadow_cascades/@enabled"/>,
                        "texture_quality": "<xsl:value-of select="textura_quality"/>",
                        "anti-aliasing": "<xsl:value-of select="anti-aliasing"/>",
                        "v-sync -enabled": <xsl:value-of select="v-sync/@enabled"/>,
                        "lightning_flicker -enabled": <xsl:value-of select="lightning_flicker/@enabled"/>,
                        "ambient_occlusion -enabled": <xsl:value-of select="ambient_occlusion/@enabled"/>,
                        "foliage_distance": <xsl:value-of select="foliage_distance"/>,
                        "ball_lights -enabled": <xsl:value-of select="ball_lights/@enabled"/>
                       }
            </xsl:for-each>,
            <xsl:for-each select="audio_options">
                "audio_options": {
                        "master": <xsl:value-of select="master"/>,
                        "music": <xsl:value-of select="music"/>,
                        "noise": <xsl:value-of select="noise"/>
                }
            </xsl:for-each>,
            <xsl:for-each select="control_options">
                "control_options": {
                        "input": "<xsl:value-of select="input"/>",
                        "sensitivity": <xsl:value-of select="sensitivity"/>,
                        "inverted_mouse":
                            "horizontal": "<xsl:value-of select="inverted_mouse/@horizontal"/>",
                            "vertical": "<xsl:value-of select="inverted_mouse/@vertical"/>",
                        "shoot": "<xsl:value-of select="shoot"/>",
                        "reset": "<xsl:value-of select="reset"/>",
                        "jump": "<xsl:value-of select="jump"/>",
                        "chatting": "<xsl:value-of select="chatting"/>",
                        "light": "<xsl:value-of select="light"/>",
                        "leaderboard": "<xsl:value-of select="leaderboard"/>"
                        }
            </xsl:for-each>
            }
        </xsl:for-each>
        }
    </xsl:template>
</xsl:stylesheet>