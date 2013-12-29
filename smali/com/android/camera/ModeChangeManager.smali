.class public Lcom/android/camera/ModeChangeManager;
.super Ljava/lang/Object;
.source "ModeChangeManager.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ModeChangeManager$OnModeChangeListener;
    }
.end annotation


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static sAnimating:Z

.field private static sCurrentMode:I


# instance fields
.field private mListener:Lcom/android/camera/ModeChangeManager$OnModeChangeListener;

.field private mScrollButton:Lcom/android/camera/ui/ScrollButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput v0, Lcom/android/camera/ModeChangeManager;->sCurrentMode:I

    .line 32
    sput-boolean v0, Lcom/android/camera/ModeChangeManager;->sAnimating:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sput-object p1, Lcom/android/camera/ModeChangeManager;->mActivity:Landroid/app/Activity;

    .line 36
    sget-object v0, Lcom/android/camera/ModeChangeManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c002b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ScrollButton;

    iput-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    .line 37
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ScrollButton;->setOnCheckedChangedListener(Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;)V

    .line 39
    iget-object v1, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-static {}, Lcom/android/camera/ModeChangeManager;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScrollButton;->setChecked(Z)V

    .line 40
    invoke-direct {p0}, Lcom/android/camera/ModeChangeManager;->updateImage()V

    .line 42
    :cond_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentMode()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/android/camera/ModeChangeManager;->sCurrentMode:I

    return v0
.end method

.method private static isCameraEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    sget v1, Lcom/android/camera/ModeChangeManager;->sCurrentMode:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCurrentMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 103
    sput p0, Lcom/android/camera/ModeChangeManager;->sCurrentMode:I

    .line 104
    return-void
.end method

.method private switchMode()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->isCameraEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 90
    .local v0, newMode:I
    :goto_0
    invoke-static {v0}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 91
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/ModeChangeManager;->sAnimating:Z

    .line 92
    sget-object v1, Lcom/android/camera/ModeChangeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 93
    iget-object v1, p0, Lcom/android/camera/ModeChangeManager;->mListener:Lcom/android/camera/ModeChangeManager$OnModeChangeListener;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/camera/ModeChangeManager;->mListener:Lcom/android/camera/ModeChangeManager$OnModeChangeListener;

    sget v2, Lcom/android/camera/ModeChangeManager;->sCurrentMode:I

    invoke-interface {v1, v2}, Lcom/android/camera/ModeChangeManager$OnModeChangeListener;->onModeChanged(I)Z

    .line 96
    :cond_0
    return-void

    .line 87
    .end local v0           #newMode:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #newMode:I
    goto :goto_0
.end method

.method private updateImage()V
    .locals 8

    .prologue
    const v7, 0x7f02014b

    const v6, 0x7f02014a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 53
    const/4 v3, 0x2

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    .line 54
    .local v2, thumbs:[Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/android/camera/ModeChangeManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, resources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->isCameraEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 57
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    .line 62
    :goto_0
    sget-boolean v3, Lcom/android/camera/ModeChangeManager;->sAnimating:Z

    if-eqz v3, :cond_1

    .line 63
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 64
    .local v1, thumbTransition:Landroid/graphics/drawable/TransitionDrawable;
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ScrollButton;->setSliderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 66
    const/16 v3, 0x190

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 67
    sput-boolean v5, Lcom/android/camera/ModeChangeManager;->sAnimating:Z

    .line 71
    .end local v1           #thumbTransition:Landroid/graphics/drawable/TransitionDrawable;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    const v4, 0x7f020148

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setFrameBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    const v4, 0x7f020149

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setSliderBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    const v4, 0x7f020109

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setCameraIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    const v4, 0x7f02010b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setVideoIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void

    .line 59
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 60
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setSliderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/camera/ModeChangeManager;->switchMode()V

    .line 80
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScrollButton;->setEnabled(Z)V

    .line 120
    return-void
.end method

.method public setOnModeChangeListener(Lcom/android/camera/ModeChangeManager$OnModeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/ModeChangeManager;->mListener:Lcom/android/camera/ModeChangeManager$OnModeChangeListener;

    .line 100
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ScrollButton;->setOrientation(IZ)V

    .line 112
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method
