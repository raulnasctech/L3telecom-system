
import {ReflexEvent,applyEventActions,isTrue,mergeSlotProps} from "$/utils/state"
import {ColorModeContext,addEvents} from "$/utils/context"
import {Fragment,memo,useCallback,useContext,useEffect} from "react"
import {jsx} from "@emotion/react"
import {IconButton as RadixThemesIconButton} from "@radix-ui/themes"








export const Cond_comp_ca57bf910541d8ab66114abd37794349_40554c69 = /*#__PURE__*/ (() => {
const Cond_comp_ca57bf910541d8ab66114abd37794349_40554c69 = memo(({children}) => {
    const { resolvedColorMode } = useContext(ColorModeContext)
    return(
        ((resolvedColorMode?.valueOf?.() === "light"?.valueOf?.())?(children?.at?.(0)):(children?.at?.(1)))
    )
});
Cond_comp_ca57bf910541d8ab66114abd37794349_40554c69.displayName = "Cond";
return Cond_comp_ca57bf910541d8ab66114abd37794349_40554c69;
})();

export const Iconbutton_iconbutton_db18ecf04859f231c6e13b4d7e4be22d_40554c69 = /*#__PURE__*/ (() => {
const Iconbutton_iconbutton_db18ecf04859f231c6e13b4d7e4be22d_40554c69 = memo(({children, ...rest}) => {
    const { toggleColorMode } = useContext(ColorModeContext)
const on_click_dedd885ce47a15c1666b026c014cf563 = useCallback(((_e) => (toggleColorMode(_e))), [addEvents, ReflexEvent, toggleColorMode])
    return(
        jsx(RadixThemesIconButton,{...mergeSlotProps(rest, ({ css:({ ["padding"] : "6px", ["position"] : "fixed", ["top"] : "2rem", ["right"] : "2rem", ["background"] : "transparent", ["color"] : "inherit", ["zIndex"] : "20", ["&:hover"] : ({ ["cursor"] : "pointer" }) }), onClick:on_click_dedd885ce47a15c1666b026c014cf563 }))},children)
    )
});
Iconbutton_iconbutton_db18ecf04859f231c6e13b4d7e4be22d_40554c69.displayName = "IconButton";
return Iconbutton_iconbutton_db18ecf04859f231c6e13b4d7e4be22d_40554c69;
})();
