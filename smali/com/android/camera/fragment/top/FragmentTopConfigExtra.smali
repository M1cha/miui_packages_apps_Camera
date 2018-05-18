.class public Lcom/android/camera/fragment/top/FragmentTopConfigExtra;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopConfigExtra.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private addContentDescriptionForConfigs(I)V
    .locals 12

    const/16 v11, 0xa0

    const v10, 0x7f0f0125

    const v9, 0x7f0f0126

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/RecyclerView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEvent(I)V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->isSwitchOn()Z

    move-result v7

    invoke-virtual {v3, v11}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getValueDisplayString(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_0

    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v8, "pref_audio_capture"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f0288

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_2

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    const-string/jumbo v8, "pref_camera_tilt_shift_mode"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getValueDisplayString(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const v8, 0x7f0f028c

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v8, "pref_camera_gradienter_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f0289

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_4

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v8, "pref_camera_hand_night_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f028a

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_5

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v8, "pref_camera_ubifocus_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f028e

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_6

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v8, "pref_camera_groupshot_mode_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f028b

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_7

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v8, "pref_camera_scenemode_setting_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f028d

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_8

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v8, "pref_video_speed_slow_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f01b9

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_9

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v8, "pref_video_speed_fast_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f01b8

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_a

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v8, "pref_camera_magic_mirror_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f0219

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_b

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v8, "pref_camera_show_gender_age_key"

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f0f018b

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_c

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_d
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v7

    sget-boolean v8, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v8, :cond_d

    const v8, 0x7f0f0164

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz v7, :cond_e

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    const v8, 0x7f0f0163

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_e
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isSwitchOn(I)Z

    move-result v7

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getValueDisplayString(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_f

    invoke-virtual {p0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public animateOut()V
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, -0x4270a3d7    # -0.07f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v1, Lcom/android/camera/fragment/top/FragmentTopConfigExtra$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra$1;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfigExtra;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf5

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f040021

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 8

    const v6, 0x7f0a007a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    iput-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/DataItemConfig;->getSupportedExtraConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900bc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int v2, v6, v3

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v6, Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-direct {v6, v5, p0}, Lcom/android/camera/fragment/top/ExtraAdapter;-><init>(Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;)V

    iput-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    iget v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mDegree:I

    invoke-virtual {v6, v7}, Lcom/android/camera/fragment/top/ExtraAdapter;->setNewDegree(I)V

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->isEnableClick()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa4

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    sparse-switch v1, :sswitch_data_0

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->addContentDescriptionForConfigs(I)V

    :cond_2
    return-void

    :sswitch_0
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu()V

    goto :goto_0

    :sswitch_1
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xc3

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$AILensProtocol;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$AILensProtocol;->startAiLens()V

    const-string/jumbo v4, "counter"

    const-string/jumbo v5, "ai_detect_changed"

    invoke-static {v4, v5}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xe1 -> :sswitch_0
        0xf2 -> :sswitch_1
    .end sparse-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, -0x42333333    # -0.1f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object v10
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->setNewDegree(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reFresh()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
