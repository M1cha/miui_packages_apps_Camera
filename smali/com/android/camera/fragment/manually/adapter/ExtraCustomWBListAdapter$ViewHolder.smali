.class Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ExtraCustomWBListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private mColorImageView:Lcom/android/camera/ui/ColorImageView;

.field private mText:Lcom/android/camera/ui/ColorActivateTextView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->mText:Lcom/android/camera/ui/ColorActivateTextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;Lcom/android/camera/ui/ColorImageView;)Lcom/android/camera/ui/ColorImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->mColorImageView:Lcom/android/camera/ui/ColorImageView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;Lcom/android/camera/ui/ColorActivateTextView;)Lcom/android/camera/ui/ColorActivateTextView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;->mText:Lcom/android/camera/ui/ColorActivateTextView;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter$ViewHolder;-><init>()V

    return-void
.end method
