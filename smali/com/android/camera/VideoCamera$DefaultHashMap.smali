.class Lcom/android/camera/VideoCamera$DefaultHashMap;
.super Ljava/util/HashMap;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 218
    .local p0, this:Lcom/android/camera/VideoCamera$DefaultHashMap;,"Lcom/android/camera/VideoCamera$DefaultHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, this:Lcom/android/camera/VideoCamera$DefaultHashMap;,"Lcom/android/camera/VideoCamera$DefaultHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, value:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera$DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    .end local v0           #value:Ljava/lang/Object;,"TV;"
    :cond_0
    return-object v0
.end method

.method public putDefault(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, this:Lcom/android/camera/VideoCamera$DefaultHashMap;,"Lcom/android/camera/VideoCamera$DefaultHashMap<TK;TV;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/android/camera/VideoCamera$DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    .line 223
    return-void
.end method
