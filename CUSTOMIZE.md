Choose a theme and a scheme
===========================

To help you choose between themes and schemes, use the [Themes matrix](http://cv4tw.6kt.eu/themes-matrix.html).

Once choosen, use the following line to setup your theme:
```tex
\usetheme[<scheme>]{<theme>}
```
e.g.:
```tex
\usetheme[celadon]{sharp}
```


Create a custom scheme
======================
If you are not happy with the given schemes, feel free to create yours !

To do so, add the following lines, right before a `\usetheme` statment:
```tex
\definecolorifnotdef{contrastmain}{RGB}{219,255,242}  % Main theme color in contrast mode
\definecolorifnotdef{main}{RGB}{60,76,70}             % Main theme color
\definecolorifnotdef{soft}{RGB}{50,64,58}             % Soft color, for title
```

RGB value are decimal.


Setup your custom styles
========================

CV4TW is designed to be highly customizable. To change a style, add this line after `\usetheme` statment:
```tex
\setmystyle[<style>]{<content>}
```
e.g.:
```tex
\setmystyle[quote]{\Huge}      % write your quote bigger
\setmystyle[missionbullet]{\mystyle[icons] +}  % use plus as a bullet for missions
```


General styles
-----------
 * `default`: How default text looks like
 * `title`: Resume title (i.e. your future job)
 * `name`: Your full name
 * `sectiontitle`: Section title
 * `subsectiontitle`: Sub-section title
 * `icons`: The default style for icons/bullets
 * `footnote`: Footnote style

Header styles
-------------
 * `quote`: Quote field style
 * `asset`: Asset field style


Story styles
------------
 * `cvstorytitle`: Story title
 * `cvstorydatelocation`: Story date and location
 * `cvstoryshort`: Story short description
 * `cvstorydescription`: Story longer description
 * `cvstoryquicknotes`: Story quick notes (on left column)
 * `mission`: Missions in story

Skill styles
------------
 * `field`: Field with x stars rate
 * `fieldrateempty`: The icon for an empty "star"
 * `fieldratefull`: The icon for a full "star"
 * `cvskillname`: Skill name (inherited from subsection)
 * `cvskilldescription`: Skill description



Contact field styles
--------------------
 * `homepage`: URL for HTTP site field
 * `homepagessl`: URL for HTTPS site field
 * `customhomepage`: URL for custom protocol field
 * `address`: Home/contact address field
 * `spokenlanguages`: Spoken languages field
 * `cvcontact`: the main style, used by all the styles below
 * `email`: email address field
 * `facebook`: Facebook username field
 * `twitter`: Twitter username field
 * `github`: Github username field
 * `googleplus`: Google+ username field
 * `linkedin`: LinkedIn username field
 * `vk`: VK username field 
 * `pinterest`: Pinterest username field
 * `skype`: Skype username field
 * `phone`: Phone number field
 * `cellphone`: Cellphone number field
 * `fax`: Fax number field
 * `age`: Age or day of birth field
 * `custom0`: custom field, number 0
 * ... repeat ...
 * `custom9`: custom field, number 9
 

Bullet styles
-------------
All bullets should contain a character or string. If you are not happy with one of those, just redefine it.
 * `custom0bullet`
 * ... repeat ...
 * `custom9bullet`
 * `githubbullet`
 * `linkedinbullet`
 * `twitterbullet`
 * `vkbullet`
 * `facebookbullet`
 * `pinterestbullet`
 * `googleplusbullet`
 * `emailbullet`
 * `cellphonebullet`
 * `phonebullet`
 * `faxbullet`
 * `homepagebullet`
 * `homepagesslbullet`
 * `customhomepagebullet`
 * `addressbullet`
 * `agebullet`
 * `spokenlanguagesbullet`
 * `fieldbullet`
 * `assetbullet`
 * `missionbullet`

Reorder contacts
================

If you want to reorder the contacts zones, you will have to use the following lines, just before `\begin{document}` line :

```tex
\setcvcontactszone[main]{% Finishing this line with a % is important to avoid a bad align of icons
\rendercontactifdefined{cellphone}
\rendercontactifdefined{email}
\rendercontactifdefined{twitter}
}
\setcvcontactszone[main]{%
\rendercontactifdefined{custom0}
\rendercontactifdefined{linkedin}
}
\setcvcontactszone[extra]{%
\rendercontactifdefined{age}
\rendercontactifdefined{fax}
\rendercontactifdefined{homepage}
}
```

Here is the list of zones you can redefine this way :
 * `main`: contains e-mail address, phone numbers, ...
 * `social`: contains social networks contacts
 * `extra`: contains fields like age, home address

