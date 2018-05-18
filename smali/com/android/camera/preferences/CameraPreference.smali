.class public abstract Lcom/android/camera/preferences/CameraPreference;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/preferences/CameraPreference;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/camera/R$styleable;->CameraPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/preferences/CameraPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/preferences/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/preferences/CameraPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/preferences/CameraPreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method
