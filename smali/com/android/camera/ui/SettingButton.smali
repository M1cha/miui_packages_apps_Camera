.class public Lcom/android/camera/ui/SettingButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "SettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;
    }
.end annotation


# static fields
.field private static final sImageResource:[I


# instance fields
.field private mListener:Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;

.field private mSettingPopup:Landroid/view/View;

.field private mSettingScreen:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/SettingButton;->sImageResource:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method private getSettingPanelState(Z)Ljava/lang/String;
    .locals 2
    .parameter "isFocused"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/camera/ui/SettingButton;->isSettingVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    if-eqz p1, :cond_0

    const v0, 0x7f0d0130

    .line 81
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0           #resId:I
    :cond_0
    const v0, 0x7f0d0132

    goto :goto_0

    .line 78
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f0d012f

    .restart local v0       #resId:I
    :goto_1
    goto :goto_0

    .end local v0           #resId:I
    :cond_2
    const v0, 0x7f0d0131

    goto :goto_1
.end method

.method private isSettingVisible()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingScreen:Landroid/view/View;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingButton;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingScreen:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingButton;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingPopup:Landroid/view/View;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 62
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 63
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/ui/SettingButton;->getSettingPanelState(Z)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mListener:Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mListener:Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;

    invoke-interface {v0}, Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;->OnSettingButtonClick()V

    .line 45
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/SettingButton;->getSettingPanelState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setOnSettingButtonListener(Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/ui/SettingButton;->mListener:Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;

    .line 51
    return-void
.end method

.method public updateImageResource()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/ui/SettingButton;->isSettingVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/android/camera/ui/SettingButton;->sImageResource:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingButton;->setImageResource(I)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    sget-object v0, Lcom/android/camera/ui/SettingButton;->sImageResource:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingButton;->setImageResource(I)V

    goto :goto_0
.end method
