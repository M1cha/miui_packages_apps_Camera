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

.field private static final sCameraIconImageResource:[I

.field private static final sCameraSliderImageResource:[I

.field private static sCurrentMode:I

.field private static final sFrameImageResource:[I

.field private static final sSliderImageResource:[I

.field private static final sVideoIconImageResource:[I

.field private static final sVideoSliderImageResource:[I


# instance fields
.field private mImageResourceIndex:I

.field private mListener:Lcom/android/camera/ModeChangeManager$OnModeChangeListener;

.field private mScrollButton:Lcom/android/camera/ui/ScrollButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ModeChangeManager;->sCameraIconImageResource:[I

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ModeChangeManager;->sVideoIconImageResource:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/ModeChangeManager;->sCameraSliderImageResource:[I

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/ModeChangeManager;->sVideoSliderImageResource:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/ModeChangeManager;->sFrameImageResource:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/ModeChangeManager;->sSliderImageResource:[I

    .line 59
    sput v2, Lcom/android/camera/ModeChangeManager;->sCurrentMode:I

    .line 60
    sput-boolean v2, Lcom/android/camera/ModeChangeManager;->sAnimating:Z

    return-void

    .line 22
    nop

    :array_0
    .array-data 0x4
        0xdt 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
    .end array-data

    .line 27
    :array_1
    .array-data 0x4
        0x11t 0x1t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0x55t 0x1t 0x2t 0x7ft
        0x56t 0x1t 0x2t 0x7ft
    .end array-data

    .line 37
    :array_3
    .array-data 0x4
        0x57t 0x1t 0x2t 0x7ft
        0x58t 0x1t 0x2t 0x7ft
    .end array-data

    .line 42
    :array_4
    .array-data 0x4
        0x51t 0x1t 0x2t 0x7ft
        0x52t 0x1t 0x2t 0x7ft
    .end array-data

    .line 47
    :array_5
    .array-data 0x4
        0x53t 0x1t 0x2t 0x7ft
        0x54t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    .line 64
    sput-object p1, Lcom/android/camera/ModeChangeManager;->mActivity:Landroid/app/Activity;

    .line 65
    sget-object v0, Lcom/android/camera/ModeChangeManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c002b

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ScrollButton;

    iput-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    .line 66
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ScrollButton;->setOnCheckedChangedListener(Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;)V

    .line 68
    iget-object v2, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-static {}, Lcom/android/camera/ModeChangeManager;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ScrollButton;->setChecked(Z)V

    .line 69
    invoke-direct {p0}, Lcom/android/camera/ModeChangeManager;->updateImage()V

    .line 71
    :cond_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentMode()I
    .locals 1

    .prologue
    .line 141
    sget v0, Lcom/android/camera/ModeChangeManager;->sCurrentMode:I

    return v0
.end method

.method private static isCameraEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 77
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
    .line 137
    sput p0, Lcom/android/camera/ModeChangeManager;->sCurrentMode:I

    .line 138
    return-void
.end method

.method private switchMode()V
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->isCameraEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 124
    .local v0, newMode:I
    :goto_0
    invoke-static {v0}, Lcom/android/camera/ModeChangeManager;->setCurrentMode(I)V

    .line 125
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/ModeChangeManager;->sAnimating:Z

    .line 126
    sget-object v1, Lcom/android/camera/ModeChangeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 127
    iget-object v1, p0, Lcom/android/camera/ModeChangeManager;->mListener:Lcom/android/camera/ModeChangeManager$OnModeChangeListener;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/camera/ModeChangeManager;->mListener:Lcom/android/camera/ModeChangeManager$OnModeChangeListener;

    sget v2, Lcom/android/camera/ModeChangeManager;->sCurrentMode:I

    invoke-interface {v1, v2}, Lcom/android/camera/ModeChangeManager$OnModeChangeListener;->onModeChanged(I)Z

    .line 130
    :cond_0
    return-void

    .line 121
    .end local v0           #newMode:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #newMode:I
    goto :goto_0
.end method

.method private updateImage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 82
    const/4 v3, 0x2

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    .line 83
    .local v2, thumbs:[Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/android/camera/ModeChangeManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, resources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->isCameraEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    sget-object v3, Lcom/android/camera/ModeChangeManager;->sVideoSliderImageResource:[I

    iget v4, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    .line 86
    sget-object v3, Lcom/android/camera/ModeChangeManager;->sCameraSliderImageResource:[I

    iget v4, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 91
    :goto_0
    sget-boolean v3, Lcom/android/camera/ModeChangeManager;->sAnimating:Z

    if-eqz v3, :cond_1

    .line 92
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 93
    .local v1, thumbTransition:Landroid/graphics/drawable/TransitionDrawable;
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ScrollButton;->setSliderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 95
    const/16 v3, 0x190

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 96
    sput-boolean v6, Lcom/android/camera/ModeChangeManager;->sAnimating:Z

    .line 100
    .end local v1           #thumbTransition:Landroid/graphics/drawable/TransitionDrawable;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    sget-object v4, Lcom/android/camera/ModeChangeManager;->sFrameImageResource:[I

    iget v5, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setFrameBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    sget-object v4, Lcom/android/camera/ModeChangeManager;->sSliderImageResource:[I

    iget v5, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setSliderBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    sget-object v4, Lcom/android/camera/ModeChangeManager;->sCameraIconImageResource:[I

    iget v5, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setCameraIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    sget-object v4, Lcom/android/camera/ModeChangeManager;->sVideoIconImageResource:[I

    iget v5, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setVideoIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void

    .line 88
    :cond_0
    sget-object v3, Lcom/android/camera/ModeChangeManager;->sCameraSliderImageResource:[I

    iget v4, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    .line 89
    sget-object v3, Lcom/android/camera/ModeChangeManager;->sVideoSliderImageResource:[I

    iget v4, p0, Lcom/android/camera/ModeChangeManager;->mImageResourceIndex:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_0

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setSliderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ModeChangeManager;->switchMode()V

    .line 114
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScrollButton;->setEnabled(Z)V

    .line 154
    return-void
.end method

.method public setOnModeChangeListener(Lcom/android/camera/ModeChangeManager$OnModeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/ModeChangeManager;->mListener:Lcom/android/camera/ModeChangeManager$OnModeChangeListener;

    .line 134
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ScrollButton;->setOrientation(IZ)V

    .line 146
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/ModeChangeManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScrollButton;->setVisibility(I)V

    .line 150
    return-void
.end method
