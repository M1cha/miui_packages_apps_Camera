.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I

.field public static final CameraPreference_title:I = 0x0

.field public static final IconIndicator:[I

.field public static final IconIndicator_icons:I = 0x0

.field public static final IconIndicator_modes:I = 0x1

.field public static final IconListPreference:[I

.field public static final IconListPreference_icons:I = 0x0

.field public static final IconListPreference_images:I = 0x3

.field public static final IconListPreference_largeIcons:I = 0x2

.field public static final IconListPreference_singleIcon:I = 0x1

.field public static final ListPreference:[I

.field public static final ListPreference_defaultValue:I = 0x1

.field public static final ListPreference_entries:I = 0x3

.field public static final ListPreference_entryValues:I = 0x2

.field public static final ListPreference_hasPopup:I = 0x4

.field public static final ListPreference_key:I = 0x0

.field public static final PreviewListPreference:[I

.field public static final PreviewListPreference_labelList:I = 0x0

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x1

.field public static final RecyclerView_reverseLayout:I = 0x3

.field public static final RecyclerView_spanCount:I = 0x2

.field public static final RecyclerView_stackFromEnd:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const v3, 0x7f01000a

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v6, [I

    const v1, 0x7f010004

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->CameraPreference:[I

    const v0, 0x7f01000b

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->IconIndicator:[I

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->IconListPreference:[I

    const v0, 0x7f010005

    const v1, 0x7f010006

    const v2, 0x7f010007

    const v3, 0x7f010008

    const v4, 0x7f010009

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->ListPreference:[I

    new-array v0, v6, [I

    const v1, 0x7f01000f

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->PreviewListPreference:[I

    const v0, 0x10100c4

    const/high16 v1, 0x7f010000

    const v2, 0x7f010001

    const v3, 0x7f010002

    const v4, 0x7f010003

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
