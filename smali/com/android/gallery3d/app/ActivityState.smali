.class public abstract Lcom/android/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field mIsFinishing:Z

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 102
    new-instance v0, Lcom/android/gallery3d/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ActivityState$1;-><init>(Lcom/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/ActivityState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/ActivityState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return p1
.end method


# virtual methods
.method initialize(Lcom/android/gallery3d/app/GalleryActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "data"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 73
    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 74
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 82
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"
    .parameter "storedState"

    .prologue
    .line 100
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 192
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 94
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 97
    return-void
.end method

.method resume()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 137
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 138
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 139
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 140
    iget v6, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 141
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 145
    :goto_0
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v5

    .line 146
    .local v5, stateCount:I
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v9

    if-le v5, v7, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6, v7}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 148
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 151
    .end local v5           #stateCount:I
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 153
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenOnFlags()V

    .line 155
    iget v6, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    move v4, v7

    .line 156
    .local v4, lightsOut:Z
    :goto_2
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 158
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 159
    .local v2, entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    if-eqz v2, :cond_1

    .line 160
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 161
    iget v6, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    iget v7, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v8, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 164
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 166
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 173
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/app/TransitionStore;->clear()V

    .line 174
    return-void

    .line 143
    .end local v2           #entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    .end local v4           #lightsOut:Z
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .restart local v5       #stateCount:I
    :cond_4
    move v6, v8

    .line 146
    goto :goto_1

    .end local v5           #stateCount:I
    :cond_5
    move v4, v8

    .line 155
    goto :goto_2
.end method

.method protected setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 69
    return-void
.end method

.method setScreenOnFlags()V
    .locals 3

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 119
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 120
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 126
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    return-void

    .line 124
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x82

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method
