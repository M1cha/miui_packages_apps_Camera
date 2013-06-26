.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field private static final MMS_VIDEO_DURATION:I

.field private static final PREF_VIDEO_CONTINUOUS_FOCUS_ENTRYVALUES:[Ljava/lang/String;

.field public static final sCameraChangeManager:Lcom/android/camera/ChangeManager;

.field public static sCroppedIfNeed:Z

.field public static final sVideoChangeManager:Lcom/android/camera/ChangeManager;


# instance fields
.field private final mCameraId:I

.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mContext:Landroid/content/Context;

.field private final mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    :goto_0
    sput v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    .line 149
    sput-boolean v2, Lcom/android/camera/CameraSettings;->sCroppedIfNeed:Z

    .line 810
    new-instance v0, Lcom/android/camera/ChangeManager;

    invoke-direct {v0}, Lcom/android/camera/ChangeManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 811
    new-instance v0, Lcom/android/camera/ChangeManager;

    invoke-direct {v0}, Lcom/android/camera/ChangeManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sVideoChangeManager:Lcom/android/camera/ChangeManager;

    .line 813
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "caf-off"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "caf-on"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/CameraSettings;->PREF_VIDEO_CONTINUOUS_FOCUS_ENTRYVALUES:[Ljava/lang/String;

    return-void

    .line 134
    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "activity"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 255
    iput p3, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 256
    iput-object p4, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 257
    return-void
.end method

.method private buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 8
    .parameter "group"
    .parameter "preference"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 479
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v3, v6

    .line 480
    .local v3, numOfCameras:I
    if-ge v3, v7, :cond_0

    .line 481
    invoke-virtual {p2}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 497
    :goto_0
    return-void

    .line 485
    :cond_0
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 486
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 487
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v6, v6, v1

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 491
    .local v2, index:I
    :goto_2
    aget-object v6, v0, v2

    if-nez v6, :cond_4

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 493
    if-ne v2, v4, :cond_3

    move v6, v5

    :goto_3
    aget-object v6, v0, v6

    if-eqz v6, :cond_4

    .line 496
    .end local v2           #index:I
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/camera/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v2, v5

    .line 487
    goto :goto_2

    .restart local v2       #index:I
    :cond_3
    move v6, v4

    .line 493
    goto :goto_3

    .line 486
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 17
    .parameter "group"
    .parameter "exposure"

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v7

    .line 450
    .local v7, max:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v9

    .line 451
    .local v9, min:I
    if-nez v7, :cond_0

    if-nez v9, :cond_0

    .line 452
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 475
    :goto_0
    return-void

    .line 455
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v11

    .line 457
    .local v11, step:F
    int-to-float v12, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Landroid/util/FloatMath;->floor(F)F

    move-result v12

    float-to-int v8, v12

    .line 458
    .local v8, maxValue:I
    int-to-float v12, v9

    mul-float/2addr v12, v11

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v10, v12

    .line 459
    .local v10, minValue:I
    sub-int v12, v8, v10

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v4, v12, 0x1

    .line 460
    .local v4, gearCount:I
    new-array v2, v4, [Ljava/lang/CharSequence;

    .line 461
    .local v2, entries:[Ljava/lang/CharSequence;
    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 462
    .local v3, entryValues:[Ljava/lang/CharSequence;
    move v5, v10

    .local v5, i:I
    :goto_1
    if-gt v5, v8, :cond_3

    .line 463
    sub-int v12, v8, v5

    mul-int/lit8 v6, v12, 0x2

    .line 464
    .local v6, index:I
    int-to-float v12, v5

    div-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v6

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v1, builder:Ljava/lang/StringBuilder;
    if-lez v5, :cond_1

    const/16 v12, 0x2b

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v6

    .line 468
    if-lez v6, :cond_2

    .line 469
    add-int/lit8 v12, v6, -0x1

    int-to-double v13, v5

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-float v13, v13

    div-float/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    .line 470
    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    .line 462
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 473
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v6           #index:I
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 474
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static changePreviewPanelLayoutParams(Landroid/app/Activity;I)V
    .locals 7
    .parameter "activity"
    .parameter "index"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 890
    const v3, 0x7f0c004b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 891
    .local v1, previewPanel:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 893
    .local v0, p1:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 895
    .local v2, rules1:[I
    if-nez p1, :cond_0

    .line 896
    const v3, 0x7f0c0010

    aput v3, v2, v5

    .line 897
    const v3, 0x7f0c0015

    aput v3, v2, v6

    .line 903
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 904
    return-void

    .line 899
    :cond_0
    aput v4, v2, v5

    .line 900
    aput v4, v2, v6

    goto :goto_0
.end method

.method public static changeUIByPreviewSize(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "index"

    .prologue
    .line 948
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeed:Z

    if-nez v0, :cond_0

    .line 949
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changePreviewPanelLayoutParams(Landroid/app/Activity;I)V

    .line 950
    invoke-static {}, Lcom/android/camera/ModeChangeManager;->getCurrentMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 951
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changeViewFinderLayout(Landroid/app/Activity;I)V

    .line 954
    :cond_0
    return-void
.end method

.method private static changeViewFinderLayout(Landroid/app/Activity;I)V
    .locals 11
    .parameter "activity"
    .parameter "index"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 907
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 909
    .local v0, bottomPanelHeight:I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 912
    .local v1, finderFramePadding:I
    const v6, 0x7f0c0082

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 914
    .local v3, qRCodeFragmentLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 916
    .local v2, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    .line 917
    .local v4, rules:[I
    const v6, 0x7f0c0084

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 919
    .local v5, viewFinderFrame:Landroid/view/View;
    if-nez p1, :cond_0

    .line 920
    const v6, 0x7f0c0010

    aput v6, v4, v9

    .line 921
    const v6, 0x7f0c0015

    aput v6, v4, v10

    .line 923
    sub-int v6, v1, v0

    invoke-virtual {v5, v8, v8, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 930
    :goto_0
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 931
    return-void

    .line 925
    :cond_0
    aput v8, v4, v9

    .line 926
    aput v8, v4, v10

    .line 928
    invoke-virtual {v5, v8, v8, v8, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private checkSupportedVideoQuality(II)Z
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    .line 686
    iget-object v5, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v3

    .line 687
    .local v3, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v0, 0x0

    .line 688
    .local v0, flag:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 690
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x1e0

    if-ne v5, v6, :cond_2

    .line 691
    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    if-ne v5, p2, :cond_0

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, p1, :cond_0

    .line 692
    const/4 v0, 0x1

    .line 702
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_1
    :goto_0
    if-ne v0, v4, :cond_3

    .line 705
    :goto_1
    return v4

    .line 696
    .restart local v2       #size:Landroid/hardware/Camera$Size;
    :cond_2
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, p1, :cond_0

    .line 697
    const/4 v0, 0x1

    .line 698
    goto :goto_0

    .line 705
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/PreferenceGroup;",
            "Lcom/android/camera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 521
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 522
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 533
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 527
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 528
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 532
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    goto :goto_0
.end method

.method public static getAspectRatio(II)D
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 268
    const-wide/16 v0, 0x0

    .line 269
    .local v0, ratio:D
    int-to-double v2, p0

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide v4, 0x3ff5555555555555L

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double v4, p0

    int-to-double v6, p1

    div-double/2addr v4, v6

    const-wide v6, 0x3ffc71c71c71c71cL

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 271
    const-wide v0, 0x3ffc71c720000000L

    .line 275
    :goto_0
    return-wide v0

    .line 273
    :cond_0
    const-wide v0, 0x3ff5555560000000L

    goto :goto_0
.end method

.method public static getCameraFrontSettingKeys(ZZ)Ljava/util/List;
    .locals 2
    .parameter "isSimpleMode"
    .parameter "isSecure"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "pref_camera_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    if-nez p0, :cond_0

    .line 179
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v1, "pref_camera_iso_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    if-eqz p1, :cond_1

    .line 185
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    return-object v0
.end method

.method public static getCameraSettingKeys(ZZ)Ljava/util/List;
    .locals 2
    .parameter "isSimpleMode"
    .parameter "isSecure"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {}, Lcom/android/camera/Device;->supportHDR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->supportHandNight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    const-string v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "pref_camera_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    if-nez p0, :cond_2

    .line 163
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v1, "pref_camera_iso_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v1, "pref_key_camera_referenceline"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_2
    if-eqz p1, :cond_3

    .line 170
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_3
    return-object v0
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cameraId"
    .parameter "defaultQuality"

    .prologue
    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 294
    .local v0, quality:I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getExitText(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 970
    const-string v0, "pref_camera_coloreffect_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    const v0, 0x7f0d01d7

    .line 984
    :goto_0
    return v0

    .line 972
    :cond_0
    const-string v0, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_hdr_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    :cond_1
    const v0, 0x7f0d01d4

    goto :goto_0

    .line 975
    :cond_2
    const-string v0, "pref_camera_hand_night_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 976
    const v0, 0x7f0d01d5

    goto :goto_0

    .line 977
    :cond_3
    const-string v0, "pref_audio_capture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 978
    const v0, 0x7f0d01d8

    goto :goto_0

    .line 979
    :cond_4
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 980
    const v0, 0x7f0d01d6

    goto :goto_0

    .line 981
    :cond_5
    const-string v0, "pref_video_speed_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 982
    const v0, 0x7f0d01d9

    goto :goto_0

    .line 984
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getPictrueSize(Landroid/content/Context;ZZLandroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "frontCamera"
    .parameter "simpleMode"
    .parameter "parameter"

    .prologue
    .line 1042
    invoke-static {}, Lcom/android/camera/Device;->defaultPictrueSize()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, pictureSize:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1044
    const v1, 0x7f0d0057

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1050
    :cond_0
    :goto_0
    return-object v0

    .line 1046
    :cond_1
    invoke-static {p3}, Lcom/android/camera/Device;->isM2Supremacy(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    const-string v0, "4208x2368"

    goto :goto_0
.end method

.method public static getSupportedVideoContinuousFocusEntryValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v0, supportedEntryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 824
    .local v1, supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "continuous-video"

    invoke-static {v2, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 825
    sget-object v2, Lcom/android/camera/CameraSettings;->PREF_VIDEO_CONTINUOUS_FOCUS_ENTRYVALUES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 827
    :cond_0
    return-object v0
.end method

.method public static getUIStyleByPreview(II)I
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 938
    const/4 v0, 0x0

    .line 940
    .local v0, index:I
    int-to-double v1, p0

    int-to-double v3, p1

    div-double/2addr v1, v3

    const-wide v3, 0x3ff5555555555555L

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    int-to-double v3, p0

    int-to-double v5, p1

    div-double/2addr v3, v5

    const-wide v5, 0x3ffc71c71c71c71cL

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 942
    const/4 v0, 0x1

    .line 944
    :cond_0
    return v0
.end method

.method public static getVideoFrontSettingKeys(ZZ)Ljava/util/List;
    .locals 2
    .parameter "isSimpleMode"
    .parameter "isSecure"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "pref_camera_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    if-nez p0, :cond_0

    .line 222
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v1, "pref_video_quality_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    if-eqz p1, :cond_1

    .line 230
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    return-object v0
.end method

.method public static getVideoSettingKeys(ZZZ)Ljava/util/List;
    .locals 2
    .parameter "isSimpleMode"
    .parameter "isSecure"
    .parameter "supportHDR"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_4

    .line 194
    const-string v1, "pref_video_hdr_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    if-nez p0, :cond_0

    .line 196
    const-string v1, "pref_camera_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    :goto_0
    if-nez p0, :cond_1

    .line 202
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v1, "pref_video_quality_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->supportHFR()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const-string v1, "pref_video_speed_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2
    if-eqz p1, :cond_3

    .line 213
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_3
    return-object v0

    .line 199
    :cond_4
    const-string v1, "pref_camera_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getVidoeDurationInMillis(Ljava/lang/String;)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 803
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    sget v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 808
    :goto_0
    return v0

    .line 805
    :cond_0
    const-string v0, "youtube"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    const v0, 0xdbba0

    goto :goto_0

    .line 808
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPreference(Lcom/android/camera/PreferenceGroup;)V
    .locals 9
    .parameter "group"

    .prologue
    .line 354
    const-string v8, "pref_video_quality_key"

    invoke-virtual {p1, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 355
    .local v5, videoQuality:Lcom/android/camera/ListPreference;
    const-string v8, "pref_video_speed_key"

    invoke-virtual {p1, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 356
    .local v6, videoSpeed:Lcom/android/camera/ListPreference;
    const-string v8, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p1, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 357
    .local v3, timeLapseInterval:Lcom/android/camera/ListPreference;
    const-string v8, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    .line 358
    .local v7, whiteBalance:Lcom/android/camera/ListPreference;
    const-string v8, "pref_camera_scenemode_key"

    invoke-virtual {p1, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 359
    .local v2, sceneMode:Lcom/android/camera/ListPreference;
    const-string v8, "pref_camera_exposure_key"

    invoke-virtual {p1, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 360
    .local v1, exposure:Lcom/android/camera/ListPreference;
    const-string v8, "pref_camera_id_key"

    invoke-virtual {p1, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 362
    .local v0, cameraIdPref:Lcom/android/camera/IconListPreference;
    const-string v8, "pref_video_effect_key"

    invoke-virtual {p1, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 366
    .local v4, videoEffect:Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_0

    .line 367
    iget v8, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-virtual {p0, v8}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, p1, v5, v8}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 370
    :cond_0
    if-eqz v6, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSupportedVideoSpeed()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, p1, v6, v8}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 374
    :cond_1
    if-eqz v7, :cond_2

    .line 375
    iget-object v8, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, p1, v7, v8}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 378
    :cond_2
    if-eqz v2, :cond_3

    .line 379
    iget-object v8, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, p1, v2, v8}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 392
    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/android/camera/CameraSettings;->buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 393
    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraSettings;->buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 395
    :cond_5
    if-eqz v3, :cond_6

    invoke-direct {p0, v3}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 396
    :cond_6
    if-eqz v4, :cond_7

    .line 397
    invoke-direct {p0, p1, v4}, Lcom/android/camera/CameraSettings;->initVideoEffect(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 398
    invoke-direct {p0, v4}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 400
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/camera/CameraSettings;->qcomInitPreferences(Lcom/android/camera/PreferenceGroup;)V

    .line 402
    return-void
.end method

.method private initVideoEffect(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 10
    .parameter "group"
    .parameter "videoEffect"

    .prologue
    const/4 v1, 0x1

    .line 782
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 784
    .local v8, values:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->isEffectSupported(I)Z

    move-result v3

    .line 786
    .local v3, goofyFaceSupported:Z
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/camera/EffectsRecorder;->isEffectSupported(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 791
    .local v1, backdropperSupported:Z
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v6, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v7, v0, v4

    .line 793
    .local v7, value:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, effectSelection:Ljava/lang/String;
    if-nez v3, :cond_2

    const-string v9, "goofy_face"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 792
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 786
    .end local v0           #arr$:[Ljava/lang/CharSequence;
    .end local v1           #backdropperSupported:Z
    .end local v2           #effectSelection:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #value:Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 795
    .restart local v0       #arr$:[Ljava/lang/CharSequence;
    .restart local v1       #backdropperSupported:Z
    .restart local v2       #effectSelection:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #value:Ljava/lang/CharSequence;
    :cond_2
    if-nez v1, :cond_3

    const-string v9, "backdropper"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 796
    :cond_3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 799
    .end local v2           #effectSelection:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/CharSequence;
    :cond_4
    invoke-direct {p0, p1, p2, v6}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 800
    return-void
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IZ)V
    .locals 10
    .parameter "context"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "isSimpleMode"

    .prologue
    const/4 v5, 0x1

    .line 305
    if-ne p2, v5, :cond_0

    .line 306
    .local v5, isFront:Z
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    .line 308
    .local v7, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {p0, v5, p3, p1}, Lcom/android/camera/CameraSettings;->getPictrueSize(Landroid/content/Context;ZZLandroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, candidateSize:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 331
    :goto_1
    return-void

    .line 305
    .end local v2           #candidateSize:Ljava/lang/String;
    .end local v5           #isFront:Z
    .end local v7           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 311
    .restart local v2       #candidateSize:Ljava/lang/String;
    .restart local v5       #isFront:Z
    .restart local v7       #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v2, v7, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 312
    :cond_2
    const/4 v2, 0x0

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_3

    const v8, 0x7f08000f

    :goto_2
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v6, :cond_5

    aget-object v1, v0, v4

    .line 316
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v7, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 317
    move-object v2, v1

    .line 318
    goto :goto_1

    .line 313
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #candidate:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_3
    const v8, 0x7f08000d

    goto :goto_2

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #candidate:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 323
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #candidate:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_5
    if-eqz v2, :cond_7

    .line 324
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 325
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v5, :cond_6

    const-string v8, "pref_camera_front_picturesize_key"

    :goto_4
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 325
    :cond_6
    const-string v8, "pref_camera_picturesize_key"

    goto :goto_4

    .line 330
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_7
    const-string v8, "CameraSettings"

    const-string v9, "No supported picture size found"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isBurstShootingEnable(Landroid/content/SharedPreferences;)Z
    .locals 4
    .parameter "pref"

    .prologue
    .line 885
    invoke-static {}, Lcom/android/camera/Device;->supportBurstShooting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    const-string v1, "pref_camera_burst_shooting_key"

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0172

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBurstShootingEnabled(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)Z
    .locals 3
    .parameter "preferences"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1031
    const v2, 0x7f0d00c5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, defaultISO:Ljava/lang/String;
    const-string v2, "pref_camera_iso_key"

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1033
    const v2, 0x7f0d017c

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1037
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isCameraSoundOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 871
    const-string v0, "pref_camera_sound_key"

    const-string v1, "on"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isContinuousFocusOn(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "context"
    .parameter "sp"
    .parameter "params"

    .prologue
    .line 831
    const-string v2, "pref_camera_continuousaf_key"

    const v3, 0x7f0d0165

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, caf:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getSupportedVideoContinuousFocusEntryValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 836
    .local v1, supportedEntryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    const-string v2, "caf-on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 838
    const/4 v2, 0x1

    .line 841
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFrontMirror(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 875
    const-string v0, "pref_captrue_mirror_key"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFullScreen(II)Z
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 279
    if-ge p0, p1, :cond_0

    .line 280
    move v0, p0

    .line 281
    .local v0, tmp:I
    move p0, p1

    .line 282
    move p1, v0

    .line 284
    .end local v0           #tmp:I
    :cond_0
    int-to-double v1, p0

    int-to-double v3, p1

    div-double/2addr v1, v3

    const-wide v3, 0x3ff5555555555555L

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    int-to-double v3, p0

    int-to-double v5, p1

    div-double/2addr v3, v5

    const-wide v5, 0x3ffc71c71c71c71cL

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 286
    const/4 v1, 0x1

    .line 288
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRecordLocation(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 867
    const-string v0, "pref_camera_recordlocation_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSimpleMode(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "sp"

    .prologue
    const/4 v0, 0x0

    .line 845
    const-string v1, "pref_layout_mode_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isVideoCaptureEnabled(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "sp"

    .prologue
    .line 863
    const-string v0, "pref_video_captrue_ability_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private qcomInitPreferences(Lcom/android/camera/PreferenceGroup;)V
    .locals 7
    .parameter "group"

    .prologue
    .line 406
    const-string v6, "pref_camera_coloreffect_key"

    invoke-virtual {p1, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 407
    .local v0, colorEffect:Lcom/android/camera/ListPreference;
    const-string v6, "pref_camera_selectablezoneaf_key"

    invoke-virtual {p1, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    .line 408
    .local v5, selectableZoneAf:Lcom/android/camera/ListPreference;
    const-string v6, "pref_camera_iso_key"

    invoke-virtual {p1, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 409
    .local v4, mIso:Lcom/android/camera/ListPreference;
    const-string v6, "pref_camera_lensshading_key"

    invoke-virtual {p1, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 410
    .local v3, lensShade:Lcom/android/camera/ListPreference;
    const-string v6, "pref_camera_histogram_key"

    invoke-virtual {p1, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 411
    .local v2, histogram:Lcom/android/camera/ListPreference;
    const-string v6, "pref_camera_denoise_key"

    invoke-virtual {p1, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 414
    .local v1, denoise:Lcom/android/camera/ListPreference;
    if-eqz v5, :cond_0

    .line 415
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedSelectableZoneAf()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 419
    :cond_0
    if-eqz v4, :cond_1

    .line 420
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, p1, v4, v6}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 424
    :cond_1
    if-eqz v3, :cond_2

    .line 425
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedLensShadeModes()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, p1, v3, v6}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 429
    :cond_2
    if-eqz v1, :cond_3

    .line 430
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, p1, v1, v6}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 434
    :cond_3
    if-eqz v0, :cond_4

    .line 435
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, p1, v0, v6}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 439
    :cond_4
    if-eqz v2, :cond_5

    .line 440
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedHistogramModes()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, p1, v2, v6}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 444
    :cond_5
    return-void
.end method

.method public static readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 7
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 639
    const-string v4, "pref_video_effect_key"

    const-string v5, "none"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, effectSelection:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 667
    :cond_0
    :goto_0
    return-object v0

    .line 643
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 644
    .local v2, separatorIndex:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, effectParameter:Ljava/lang/String;
    const-string v4, "goofy_face"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 647
    const-string v4, "squeeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_2
    const-string v4, "big_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 650
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 651
    :cond_3
    const-string v4, "big_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 652
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_4
    const-string v4, "small_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 654
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_5
    const-string v4, "big_nose"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 656
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 657
    :cond_6
    const-string v4, "small_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 658
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 660
    :cond_7
    const-string v4, "backdropper"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 666
    :cond_8
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid effect selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 667
    goto/16 :goto_0
.end method

.method public static readEffectType(Landroid/content/SharedPreferences;)I
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 626
    const-string v2, "pref_video_effect_key"

    const-string v3, "none"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, effectSelection:Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    :goto_0
    return v1

    .line 629
    :cond_0
    const-string v2, "goofy_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    const/4 v1, 0x1

    goto :goto_0

    .line 631
    :cond_1
    const-string v2, "backdropper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    const/4 v1, 0x2

    goto :goto_0

    .line 634
    :cond_2
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid effect selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readExposure(Lcom/android/camera/ComboPreferences;Z)I
    .locals 5
    .parameter "preferences"
    .parameter "readDefault"

    .prologue
    .line 615
    if-eqz p1, :cond_0

    const-string v1, "0"

    .line 618
    .local v1, exposure:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 622
    :goto_1
    return v2

    .line 615
    .end local v1           #exposure:Ljava/lang/String;
    :cond_0
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 619
    .restart local v1       #exposure:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 620
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 604
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 500
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 501
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    .line 502
    .local v0, child:Lcom/android/camera/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 503
    check-cast v3, Lcom/android/camera/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 513
    .end local v0           #child:Lcom/android/camera/CameraPreference;
    :goto_1
    return v3

    .line 507
    .restart local v0       #child:Lcom/android/camera/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/ListPreference;

    .end local v0           #child:Lcom/android/camera/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 510
    goto :goto_1

    .line 500
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "group"
    .parameter "key"

    .prologue
    .line 335
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 336
    return-void
.end method

.method private resetIfInvalid(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 537
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 539
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 541
    :cond_0
    return-void
.end method

.method public static resetOpenCameraFailTimes()V
    .locals 4

    .prologue
    .line 857
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 858
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "open_camera_fail_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 859
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 860
    return-void
.end method

.method public static resetSettingsNoNeedToSave(Lcom/android/camera/ComboPreferences;Landroid/content/Context;)V
    .locals 9
    .parameter "preferences"
    .parameter "context"

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 990
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "0"

    const-string v7, "pref_camera_exposure_key"

    const-string v8, "0"

    invoke-virtual {p0, v7, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 991
    const-string v6, "pref_camera_exposure_key"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 994
    :cond_0
    const v6, 0x7f0d007f

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, defaultEffect:Ljava/lang/String;
    const-string v6, "pref_camera_coloreffect_key"

    invoke-virtual {p0, v6, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 996
    const-string v6, "pref_camera_coloreffect_key"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 999
    :cond_1
    const v6, 0x7f0d00c5

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, defaultISO:Ljava/lang/String;
    const-string v6, "pref_camera_iso_key"

    invoke-virtual {p0, v6, v1}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1001
    const-string v6, "pref_camera_iso_key"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1004
    :cond_2
    const v6, 0x7f0d0077

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1005
    .local v4, defaultWhiteBalance:Ljava/lang/String;
    const-string v6, "pref_camera_whitebalance_key"

    invoke-virtual {p0, v6, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1006
    const-string v6, "pref_camera_whitebalance_key"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1009
    :cond_3
    const v6, 0x7f0d00af

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1010
    .local v2, defaultSceneMode:Ljava/lang/String;
    const-string v6, "pref_camera_scenemode_key"

    invoke-virtual {p0, v6, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1011
    const-string v6, "pref_camera_scenemode_key"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1014
    :cond_4
    const v6, 0x7f0d00f4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1015
    .local v3, defaultVideoSpeed:Ljava/lang/String;
    const-string v6, "pref_video_speed_key"

    invoke-virtual {p0, v6, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1016
    const-string v6, "pref_video_speed_key"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1018
    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1019
    return-void
.end method

.method public static resetSpecificSettings(Lcom/android/camera/ComboPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "preferences"
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1024
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1025
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1027
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1028
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;)V
    .locals 2
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 672
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 673
    .local v0, currentCameraId:I
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 674
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 675
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 679
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/ComboPreferences;)V

    .line 681
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 682
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 340
    const/16 v6, 0x78

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 341
    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v5

    .line 342
    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 343
    .local v4, width:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 344
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 345
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v4, :cond_2

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v0, :cond_2

    .line 346
    invoke-virtual {p2, v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 347
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static settingHasNoPopup(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 247
    const-string v0, "pref_key_camera_referenceline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_audio_capture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_layout_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 562
    .local v2, size:Landroid/hardware/Camera$Size;
    const-string v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 564
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method public static updateOpenCameraFailTimes()J
    .locals 7

    .prologue
    .line 849
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 850
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v3

    const-string v4, "open_camera_fail_key"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long v1, v3, v5

    .line 851
    .local v1, openCameraFail:J
    const-string v3, "open_camera_fail_key"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 852
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 853
    return-wide v1
.end method

.method public static upgradeGlobalPreferences(Lcom/android/camera/ComboPreferences;)V
    .locals 5
    .parameter "combPref"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 571
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_version_key"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 572
    .local v1, version:I
    if-nez v1, :cond_0

    .line 575
    const-string v2, "pref_layout_mode"

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    const-string v2, "pref_layout_mode_key"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 580
    :goto_0
    const-string v2, "pref_layout_mode"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 581
    const/4 v1, 0x1

    .line 584
    :cond_0
    const-string v2, "pref_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 585
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 586
    return-void

    .line 578
    :cond_1
    const-string v2, "pref_layout_mode_key"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "prefLocal"

    .prologue
    .line 589
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 590
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 591
    .local v2, version:I
    if-nez v2, :cond_1

    .line 592
    const-string v3, "pref_camera_picturesize_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, pictrueSize:Ljava/lang/String;
    sget-boolean v3, Lcom/android/camera/Device;->IS_MITWO:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const-string v3, "3264x1836"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    const-string v3, "pref_camera_picturesize_key"

    const-string v4, "3264x1840"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 596
    :cond_0
    const/4 v2, 0x1

    .line 599
    .end local v1           #pictrueSize:Ljava/lang/String;
    :cond_1
    const-string v3, "pref_local_version_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 600
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 601
    return-void
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 609
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 610
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 611
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 612
    return-void
.end method


# virtual methods
.method public getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;
    .locals 3
    .parameter "preferenceRes"

    .prologue
    .line 260
    new-instance v1, Lcom/android/camera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 261
    .local v1, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    .line 263
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->initPreference(Lcom/android/camera/PreferenceGroup;)V

    .line 264
    return-object v0
.end method

.method public getSupportedVideoQuality(I)Ljava/util/ArrayList;
    .locals 10
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x1e0

    .line 725
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v1, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    .line 727
    .local v0, pref:Lcom/android/camera/ComboPreferences;
    const-string v3, "pref_video_speed_key"

    const-string v4, "normal"

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, videoSpeed:Ljava/lang/String;
    const/4 v3, 0x6

    invoke-static {p1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 730
    const/16 v3, 0x780

    const/16 v4, 0x440

    invoke-direct {p0, v3, v4}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "fast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 732
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    :cond_0
    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 736
    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {p0, v3, v4}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_1
    invoke-static {p1, v8}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 741
    const/16 v3, 0x2d0

    invoke-direct {p0, v3, v5}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 742
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_2
    invoke-static {p1, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 746
    const/16 v3, 0xb0

    const/16 v4, 0x90

    invoke-direct {p0, v3, v4}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 747
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_3
    invoke-static {p1, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 751
    const/16 v3, 0x160

    const/16 v4, 0x120

    invoke-direct {p0, v3, v4}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 752
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_4
    const/16 v3, 0x8

    invoke-static {p1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 756
    const/16 v3, 0x360

    invoke-direct {p0, v3, v5}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 757
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_5
    const/16 v3, 0x9

    invoke-static {p1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 761
    const/16 v3, 0x320

    invoke-direct {p0, v3, v5}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "slow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 762
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_6
    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 766
    const/16 v3, 0x280

    invoke-direct {p0, v3, v5}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 767
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_7
    const/16 v3, 0xb

    invoke-static {p1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 771
    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_8
    const/4 v3, 0x7

    invoke-static {p1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 774
    const/16 v3, 0x140

    const/16 v4, 0xf0

    invoke-direct {p0, v3, v4}, Lcom/android/camera/CameraSettings;->checkSupportedVideoQuality(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 775
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_9
    return-object v1
.end method

.method public getSupportedVideoSpeed()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v3, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/ComboPreferences;->instance()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    .line 711
    .local v1, pref:Lcom/android/camera/ComboPreferences;
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    iget-object v5, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, defaultQuality:Ljava/lang/String;
    const-string v4, "pref_video_quality_key"

    invoke-virtual {v1, v4, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 714
    .local v2, quality:I
    const-string v4, "normal"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    .line 716
    const-string v4, "fast"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_0
    const/16 v4, 0x9

    if-eq v2, v4, :cond_1

    .line 719
    const-string v4, "slow"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_1
    return-object v3
.end method
