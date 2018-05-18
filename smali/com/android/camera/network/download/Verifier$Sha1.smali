.class public final Lcom/android/camera/network/download/Verifier$Sha1;
.super Lcom/android/camera/network/download/Verifier;
.source "Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/download/Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sha1"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "SHA-1"

    const/16 v1, 0x28

    invoke-static {p1, v1}, Lcom/android/camera/network/download/Verifier;->-wrap0(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/network/download/Verifier;-><init>(Ljava/lang/String;[B)V

    return-void
.end method
