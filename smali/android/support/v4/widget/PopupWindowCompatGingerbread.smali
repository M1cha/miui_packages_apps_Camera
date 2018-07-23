.class Landroid/support/v4/widget/PopupWindowCompatGingerbread;
.super Ljava/lang/Object;
.source "PopupWindowCompatGingerbread.java"


# static fields
.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 5
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethodAttempted:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 73
    :goto_1
    return v3

    .line 57
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "getWindowLayoutType"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 59
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :goto_2
    sput-boolean v4, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethodAttempted:Z

    goto :goto_0

    .line 68
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 4
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .prologue
    const/4 v3, 0x1

    .line 34
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethodAttempted:Z

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 52
    :goto_1
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "setWindowLayoutType"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 38
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :goto_2
    sput-boolean v3, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethodAttempted:Z

    goto :goto_0

    .line 47
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    goto :goto_1

    .line 39
    :catch_1
    move-exception v0

    goto :goto_2
.end method
