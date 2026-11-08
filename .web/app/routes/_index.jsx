import LucideSun from "lucide-react/dist/esm/icons/sun.mjs"
import LucideMoon from "lucide-react/dist/esm/icons/moon.mjs"
import {Fragment,useEffect} from "react"
import {Cond_comp_ca57bf910541d8ab66114abd37794349_40554c69,Iconbutton_iconbutton_db18ecf04859f231c6e13b4d7e4be22d_40554c69} from "$/app_components/L3telecom_system/L3telecom_system"
import {Button as RadixThemesButton,Code as RadixThemesCode,Container as RadixThemesContainer,Flex as RadixThemesFlex,Heading as RadixThemesHeading,Link as RadixThemesLink,Text as RadixThemesText} from "@radix-ui/themes"
import {Link as ReactRouterLink} from "react-router"
import {jsx} from "@emotion/react"





function Component() {


  return (
    jsx(Fragment,{},jsx(RadixThemesContainer,{css:({ ["padding"] : "16px" }),size:"3"},jsx(Iconbutton_iconbutton_db18ecf04859f231c6e13b4d7e4be22d_40554c69,{},jsx(Fragment,{},jsx(Cond_comp_ca57bf910541d8ab66114abd37794349_40554c69,{},jsx(Fragment,{},jsx(LucideSun,{},)),jsx(Fragment,{},jsx(LucideMoon,{},))))),jsx(RadixThemesFlex,{align:"start",className:"rx-Stack",css:({ ["minHeight"] : "85vh" }),direction:"column",justify:"center",gap:"5"},jsx(RadixThemesHeading,{size:"9"},"Welcome to Reflex!"),jsx(RadixThemesText,{as:"p",size:"5"},"Get started by editing ",jsx(RadixThemesCode,{},"L3telecom_system/L3telecom_system.py")),jsx(RadixThemesLink,{asChild:true,css:({ ["&:hover"] : ({ ["color"] : "var(--accent-8)" }) })},jsx(ReactRouterLink,{target:(true ? "_blank" : ""),to:"https://reflex.dev/docs/getting-started/introduction/"},jsx(RadixThemesButton,{},"Check out our docs!"))))),jsx("title",{},"L3TelecomSystem | Index"),jsx("meta",{content:"favicon.ico",property:"og:image"},))
  )
}
Component.displayName = "Component(index)";

export default Component;
