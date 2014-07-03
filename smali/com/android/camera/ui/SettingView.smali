.class public abstract Lcom/android/camera/ui/SettingView;
.super Landroid/widget/RelativeLayout;
.source "SettingView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mAnchor:Landroid/widget/ImageView;

.field protected mCurrentMode:Ljava/lang/String;

.field protected mDismissRequest:Z

.field protected mExitArea:Landroid/view/View;

.field protected mExitView:Landroid/widget/TextView;

.field protected mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

.field protected mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/AbstractIndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAnimating:Z

.field protected mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field protected mOrientation:I

.field protected mPopupRequest:Z

.field protected mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field protected mRotatables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/Rotatable;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field protected mSettingButton:Lcom/android/camera/ui/SettingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 28
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 30
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 28
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 30
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 28
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 30
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/SettingView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/SettingView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/SettingView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    .line 139
    .local v0, "runnalbe":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    .line 140
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 149
    .end local v0    # "runnalbe":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingView;->setPressed(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SettingView;->updateExitLayout(Z)V

    .line 146
    iput-boolean v2, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->requestLayout()V

    goto :goto_0
.end method

.method public dismissSettingPopup()Z
    .locals 3

    .prologue
    .line 76
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 77
    .local v1, "v":Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->invalidate()V

    .line 79
    const/4 v2, 0x1

    .line 82
    .end local v1    # "v":Lcom/android/camera/ui/AbstractIndicatorButton;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 4

    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 87
    .local v2, "v":Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v2}, Lcom/android/camera/ui/AbstractIndicatorButton;->getPopupWindow()Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v1

    .line 88
    .local v1, "result":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 90
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "v":Lcom/android/camera/ui/AbstractIndicatorButton;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    return-object v0
.end method

.method public abstract initializeSettingScreen(Lcom/android/camera/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;",
            "I)V"
        }
    .end annotation
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 209
    iget-boolean v0, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    if-eqz v0, :cond_0

    .line 210
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingView;->startAnim(Z)V

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    if-eqz v0, :cond_1

    .line 214
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingView;->startAnim(Z)V

    .line 217
    :cond_1
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 111
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 116
    .local v0, "b":Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v0    # "b":Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    return-void
.end method

.method public popup(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->tryReinstall()V

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingView;->setPressed(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingView;->setVisibility(I)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingView;->updateExitLayout(Z)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    iput-boolean v2, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->requestLayout()V

    goto :goto_0
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 66
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 67
    .local v0, "b":Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->reloadPreference()V

    goto :goto_0

    .line 69
    .end local v0    # "b":Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_0
    return-void
.end method

.method public resetSettings(Lcom/android/camera/ComboPreferences;)V
    .locals 0
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 263
    return-void
.end method

.method public runAfterDismiss(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->dismiss()V

    .line 154
    return-void
.end method

.method public sendClickTo(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v3, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/Rotatable;

    .line 245
    .local v2, "r":Lcom/android/camera/ui/Rotatable;
    instance-of v3, v2, Lcom/android/camera/ui/PopupMenuItem;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 246
    check-cast v1, Lcom/android/camera/ui/PopupMenuItem;

    .line 247
    .local v1, "item":Lcom/android/camera/ui/PopupMenuItem;
    invoke-virtual {v1}, Lcom/android/camera/ui/PopupMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/android/camera/ui/PopupMenuItem;->performClick()Z

    goto :goto_0

    .line 252
    .end local v1    # "item":Lcom/android/camera/ui/PopupMenuItem;
    .end local v2    # "r":Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentMode"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setIndicatorImage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 94
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 98
    .local v0, "b":Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->setBackgoundLocked()V

    .line 100
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/AbstractIndicatorButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 108
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 56
    iput p1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 57
    neg-int p1, p1

    .line 58
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    .line 60
    .local v1, "v":Lcom/android/camera/ui/Rotatable;
    invoke-interface {v1, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_1

    .line 58
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Lcom/android/camera/ui/Rotatable;
    :cond_0
    rem-int/lit16 v2, p1, 0x168

    add-int/lit16 p1, v2, 0x168

    goto :goto_0

    .line 62
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected setPressed(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    .line 221
    .local v1, "v":Lcom/android/camera/ui/Rotatable;
    instance-of v2, v1, Lcom/android/camera/ui/PopupMenuItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 222
    check-cast v2, Lcom/android/camera/ui/PopupMenuItem;

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    check-cast v1, Lcom/android/camera/ui/PopupMenuItem;

    .end local v1    # "v":Lcom/android/camera/ui/Rotatable;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PopupMenuItem;->setPressed(Z)V

    goto :goto_0

    .line 225
    .restart local v1    # "v":Lcom/android/camera/ui/Rotatable;
    :cond_1
    check-cast v1, Lcom/android/camera/ui/PopupMenuItem;

    .end local v1    # "v":Lcom/android/camera/ui/Rotatable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PopupMenuItem;->setPressed(Z)V

    goto :goto_0

    .line 229
    :cond_2
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingView;->popup(Z)V

    .line 233
    return-void
.end method

.method public showPopup(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    return-void
.end method

.method protected startAnim(Z)V
    .locals 13
    .param p1, "isPopup"    # Z

    .prologue
    const/high16 v7, 0x40000000

    const/high16 v12, 0x3f800000

    const v11, 0x3f7d70a4

    const-wide/16 v9, 0x12c

    const v8, 0x3c23d70a

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float v3, v5, v7

    .line 158
    .local v3, "moveY":F
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02005e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 159
    .local v4, "rightW":I
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 160
    .local v1, "anchorW":I
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    .local v0, "anchorActualW":I
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float/2addr v5, v7

    add-int v6, v4, v0

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v2, v5, v6

    .line 162
    .local v2, "moveX":F
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/SettingView;->setX(F)V

    .line 164
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/SettingView;->setY(F)V

    .line 165
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/SettingView;->setScaleX(F)V

    .line 166
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/SettingView;->setScaleY(F)V

    .line 167
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, -0x40828f5c

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    neg-float v6, v2

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    neg-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/camera/ui/SettingView$1;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/SettingView$1;-><init>(Lcom/android/camera/ui/SettingView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 204
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 184
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v11

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/camera/ui/SettingView$2;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/SettingView$2;-><init>(Lcom/android/camera/ui/SettingView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method protected tryReinstall()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public updateExitLayout(Z)V
    .locals 0
    .param p1, "isMenuShow"    # Z

    .prologue
    .line 259
    return-void
.end method

.method public updateExitView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 257
    return-void
.end method
