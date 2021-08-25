#############################################################################
# Generated by PAGE version 5.4
#  in conjunction with Tcl version 8.6
#  Aug 18, 2020 09:57:28 AM -03  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}



    menu .pop46 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(pr,menubgcolor) -font TkMenuFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 1 
    vTcl:DefineAlias ".pop46" "Popupmenu1" vTcl:WidgetProc "" 1

proc vTclWindow.top44 {base} {
    global vTcl
    if {$base == ""} {
        set base .top44
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 961x670+1124+11
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 2375 738
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Mensagens automática"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    frame $top.fra49 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 653 -highlightcolor black -width 945 
    vTcl:DefineAlias "$top.fra49" "Frame1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra49
    listbox $site_3_0.lis50 \
        -background white -font TkFixedFont -foreground $vTcl(actual_gui_fg) \
        -height 252 -highlightcolor black -selectbackground blue \
        -selectforeground white -width 452 
    $site_3_0.lis50 configure -font "TkFixedFont"
    $site_3_0.lis50 insert end text
    vTcl:DefineAlias "$site_3_0.lis50" "mostraPlanilha" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but51 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {Carregar arquivo} 
    vTcl:DefineAlias "$site_3_0.but51" "carregaPlanilha" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but52 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Sair 
    vTcl:DefineAlias "$site_3_0.but52" "btnSair" vTcl:WidgetProc "Toplevel1" 1
    listbox $site_3_0.lis53 \
        -background white -font TkFixedFont -foreground $vTcl(actual_gui_fg) \
        -height 252 -highlightcolor black -selectbackground blue \
        -selectforeground white -width 454 
    $site_3_0.lis53 configure -font "TkFixedFont"
    $site_3_0.lis53 insert end text
    vTcl:DefineAlias "$site_3_0.lis53" "mostraPlanilhaEmail" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab55 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {Mensagem do e-mail} 
    vTcl:DefineAlias "$site_3_0.lab55" "Label1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab56 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Nome 
    vTcl:DefineAlias "$site_3_0.lab56" "Label2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab57 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text E-mail 
    vTcl:DefineAlias "$site_3_0.lab57" "Label3" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but58 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {Carregar anexo} 
    vTcl:DefineAlias "$site_3_0.but58" "carregaAnexo" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $site_3_0.che59 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -text {Seu e-mail possui anexo?} -variable che59 
    vTcl:DefineAlias "$site_3_0.che59" "checkAnexo" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but60 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -state active \
        -text Enviar 
    vTcl:DefineAlias "$site_3_0.but60" "btnEnviar" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab61 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {Carregar e-mails para envio} 
    vTcl:DefineAlias "$site_3_0.lab61" "Label4" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab62 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {Enviar e-mails} 
    vTcl:DefineAlias "$site_3_0.lab62" "Label4_3" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab63 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {Sair do programa} 
    vTcl:DefineAlias "$site_3_0.lab63" "Label4_4" vTcl:WidgetProc "Toplevel1" 1
    text $site_3_0.tex46 \
        -background white -font TkTextFont -foreground black -height 160 \
        -highlightcolor black -insertbackground black -selectbackground blue \
        -selectforeground white -width 449 -wrap word 
    $site_3_0.tex46 configure -font "TkTextFont"
    $site_3_0.tex46 insert end text
    vTcl:DefineAlias "$site_3_0.tex46" "Text1" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent45 \
        -background white -font TkFixedFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -insertbackground black -selectbackground blue \
        -selectforeground white -width 346 
    vTcl:DefineAlias "$site_3_0.ent45" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent46 \
        -background white -font TkFixedFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -insertbackground black -selectbackground blue \
        -selectforeground white -width 346 
    vTcl:DefineAlias "$site_3_0.ent46" "Entry1_1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab47 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {E-mail Gmail:} 
    vTcl:DefineAlias "$site_3_0.lab47" "Label5" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab48 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Senha: 
    vTcl:DefineAlias "$site_3_0.lab48" "Label5_2" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent47 \
        -background white -font TkFixedFont -foreground $vTcl(actual_gui_fg) \
        -insertbackground black -width 446 
    vTcl:DefineAlias "$site_3_0.ent47" "Entry2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab49 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {Assunto do e-mail} 
    vTcl:DefineAlias "$site_3_0.lab49" "Label1_1" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lis50 \
        -in $site_3_0 -x 0 -relx 0.011 -y 0 -rely 0.046 -width 0 \
        -relwidth 0.48 -height 0 -relheight 0.386 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but51 \
        -in $site_3_0 -x 0 -relx 0.826 -y 0 -rely 0.689 -width 150 \
        -relwidth 0 -height 35 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but52 \
        -in $site_3_0 -x 0 -relx 0.826 -y 0 -rely 0.888 -width 150 \
        -relwidth 0 -height 35 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lis53 \
        -in $site_3_0 -x 0 -relx 0.51 -y 0 -rely 0.046 -width 0 \
        -relwidth 0.482 -height 0 -relheight 0.386 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab55 \
        -in $site_3_0 -x 0 -relx 0.011 -y 0 -rely 0.704 -width 0 \
        -relwidth 0.464 -height 0 -relheight 0.023 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab56 \
        -in $site_3_0 -x 0 -relx 0.011 -y 0 -rely 0.015 -width 0 \
        -relwidth 0.467 -height 0 -relheight 0.023 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab57 \
        -in $site_3_0 -x 0 -relx 0.54 -y 0 -rely 0.015 -width 0 \
        -relwidth 0.453 -height 0 -relheight 0.023 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but58 \
        -in $site_3_0 -x 0 -relx 0.826 -y 0 -rely 0.781 -width 150 \
        -relwidth 0 -height 35 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.che59 \
        -in $site_3_0 -x 0 -relx 0.498 -y 0 -rely 0.781 -width 0 \
        -relwidth 0.292 -height 0 -relheight 0.055 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but60 \
        -in $site_3_0 -x 0 -relx 0.826 -y 0 -rely 0.582 -width 150 \
        -relwidth 0 -height 35 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab61 \
        -in $site_3_0 -x 0 -relx 0.498 -y 0 -rely 0.689 -width 0 \
        -relwidth 0.296 -height 0 -relheight 0.054 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab62 \
        -in $site_3_0 -x 0 -relx 0.498 -y 0 -rely 0.582 -width 0 \
        -relwidth 0.298 -height 0 -relheight 0.054 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab63 \
        -in $site_3_0 -x 0 -relx 0.498 -y 0 -rely 0.888 -width 0 \
        -relwidth 0.287 -height 0 -relheight 0.055 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tex46 \
        -in $site_3_0 -x 0 -relx 0.011 -y 0 -rely 0.735 -width 0 \
        -relwidth 0.477 -height 0 -relheight 0.245 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent45 \
        -in $site_3_0 -x 0 -relx 0.117 -y 0 -rely 0.475 -width 346 \
        -relwidth 0 -height 27 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent46 \
        -in $site_3_0 -x 0 -relx 0.616 -y 0 -rely 0.475 -width 346 \
        -relwidth 0 -height 27 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 0 -relx 0.011 -y 0 -rely 0.475 -width 0 \
        -relwidth 0.096 -height 0 -relheight 0.038 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab48 \
        -in $site_3_0 -x 0 -relx 0.51 -y 0 -rely 0.475 -width 0 \
        -relwidth 0.096 -height 0 -relheight 0.038 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent47 \
        -in $site_3_0 -x 0 -relx 0.021 -y 0 -rely 0.628 -width 446 \
        -relwidth 0 -height 27 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab49 \
        -in $site_3_0 -x 0 -relx 0.011 -y 0 -rely 0.597 -width 0 \
        -relwidth 0.464 -height 0 -relheight 0.023 -anchor nw \
        -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.fra49 \
        -in $top -x 0 -relx 0.01 -y 0 -rely 0.015 -width 0 -relwidth 0.98 \
        -height 0 -relheight 0.975 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top44 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

