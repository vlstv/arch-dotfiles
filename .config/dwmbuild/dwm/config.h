/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 3;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int swallowfloating    = 0;        /* 1 means swallow floating windows by default */
static const unsigned int systraypinning = 1;   /* 0: sloppy systray follows selected monitor, >0: pin systray to monitor X */
static const unsigned int systrayspacing = 4;   /* systray spacing */
static const int systraypinningfailfirst = 1;   /* 1: if pinning fails, display systray on the first monitor, False: display systray on the last monitor*/
static const int showsystray        = 1;     /* 0 means no systray */
static const unsigned int gappih    = 10;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 10;       /* vert inner gap between windows */
static const unsigned int gappoh    = 10;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 10;       /* vert outer gap between windows and screen edge */
static const int smartgaps          = 1;        /* 1 means no outer gap when there is only one window */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "monospace:size=9", "TerminessTTF Nerd Font:size=12:antialias=true:autohint=true" };
static const char dmenufont[]       = "monospace:size=9";
static const char col_gray1[]       = "#2e3440";
static const char col_gray2[]       = "#2e3440";
static const char col_gray3[]       = "#d8dee9";
static const char col_gray4[]       = "#2e3440";
static const char col_back1[]       = "#81a1c1"; /*"#9c6279" dust rose*/
static const char col_cyan[]        = "#81a1c1"; /*"#638cc4 "; old from i3 conf: #76C8D9*/
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_back1, col_cyan  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	*	WM_CLASS(STRING) = instance, class
	*	WM_NAME(STRING) = title
	*/
	/* class      instance    title       tags mask    switchtag   isfloating   isterminal   noswallow   monitor */
	{ "Steam",     NULL,       NULL,       1 << 5,      0,          0,           0,           0,          -1 },
    { "firefox",   NULL,       NULL,       1 << 1,      1,          0,           0,           0,          -1 },
	{ "Telegram",  NULL,       NULL,       1 << 2,      1,          0,           0,           0,          -1 },
	{ "kitty",     NULL,       NULL,       0,           0,          0,           1,           0,          -1 },
	{ "ranger",    NULL,       "ranger",   0,           0,          0,           1,           0,          -1 },
};

/* layout(s) */
static const float mfact     = 0.5; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */

#include "layouts.c"
#include "gaplessgrid.c"
#include "movestack.c"

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
	{ "HHH",      gaplessgrid },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_back1, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "kitty", NULL };

#include <X11/XF86keysym.h>
static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_d,      spawn,          {.v = dmenucmd } },
	{ MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_Right,  focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_Left,   focusstack,     {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_Up,     setmfact,       {.f = +0.05} },
	{ MODKEY|ShiftMask,             XK_Down,   setmfact,       {.f = -0.05} },
	{ MODKEY|ShiftMask,             XK_Right,  movestack,      {.i = +1 } },
    { MODKEY|ShiftMask,             XK_Left,   movestack,      {.i = -1 } },
	{ MODKEY,                       XK_s,      incrgaps,       {.i = +5 } },
	{ MODKEY,                       XK_w,      togglegaps,     {0} },
	{ MODKEY|ShiftMask,             XK_w,      defaultgaps,    {0} },
	{ MODKEY|ShiftMask,             XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY,                       XK_q,      killclient,     {0} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_g,      setlayout,      {.v = &layouts[3]} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_f,      togglefullscr,  {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	{ 0,XF86XK_AudioRaiseVolume,    spawn,          SHCMD("pactl set-sink-volume @DEFAULT_SINK@ +10%; kill -RTMIN+11 $(pidof dwmblocks)") },
	{ 0,XF86XK_AudioLowerVolume,    spawn,          SHCMD("pactl set-sink-volume @DEFAULT_SINK@ -10%; kill -RTMIN+11 $(pidof dwmblocks)") },
	{ 0,XF86XK_AudioMute,           spawn,          SHCMD("pactl set-sink-mute @DEFAULT_SINK@ toggle; kill -RTMIN+11 $(pidof dwmblocks)") },
	{ 0,XF86XK_AudioMicMute,        spawn,          SHCMD("pactl set-source-mute @DEFAULT_SOURCE@ toggle") },
	{ 0,XF86XK_MonBrightnessUp,     spawn,          SHCMD("light -A 10") },
	{ 0,XF86XK_MonBrightnessDown,   spawn,          SHCMD("light -U 10") },
	{ 0,XK_Print,                   spawn,          SHCMD("scrot 'screenshot_%Y%m%d_%H%M%S.png'") },
	{ ShiftMask,XK_Print,           spawn,          SHCMD("scrot -s 'screenshot_%Y%m%d_%H%M%S.png'") },
	{ MODKEY|ShiftMask,XK_d,        spawn,          SHCMD("echo -e 'HDMI-1\neDP-1\nHDMI-1+eDP-1' | dmenu | /home/vlstv/s/tooglemonitors.sh")},
	{ MODKEY,XK_p,                  spawn,          SHCMD("kitty -e ranger")},
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_e,      quit,           {0
} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

