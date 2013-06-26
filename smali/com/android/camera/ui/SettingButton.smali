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
.field private static final sImageResource:[[I


# instance fields
.field private mImageResourceIndex:I

.field private mListener:Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;

.field private mSettingPopup:Landroid/view/View;

.field private mSettingScreen:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 17
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/SettingButton;->sImageResource:[[I

    return-void

    :array_0
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/SettingButton;->mImageResourceIndex:I

    .line 23
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mListener:Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mListener:Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;

    invoke-interface {v0}, Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;->OnSettingButtonClick()V

    .line 55
    :cond_0
    return-void
.end method

.method public setOnSettingButtonListener(Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/SettingButton;->mListener:Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;

    .line 61
    return-void
.end method

.method public updateImageResource()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingScreen:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingButton;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingScreen:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingButton;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingPopup:Landroid/view/View;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/SettingButton;->mSettingPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 44
    :cond_1
    sget-object v0, Lcom/android/camera/ui/SettingButton;->sImageResource:[[I

    iget v1, p0, Lcom/android/camera/ui/SettingButton;->mImageResourceIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingButton;->setImageResource(I)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_2
    sget-object v0, Lcom/android/camera/ui/SettingButton;->sImageResource:[[I

    iget v1, p0, Lcom/android/camera/ui/SettingButton;->mImageResourceIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingButton;->setImageResource(I)V

    goto :goto_0
.end method
