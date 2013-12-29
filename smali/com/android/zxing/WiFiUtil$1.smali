.class final Lcom/android/zxing/WiFiUtil$1;
.super Ljava/lang/Object;
.source "WiFiUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/WiFiUtil;->sortByPriority(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 154
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .end local p1
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/zxing/WiFiUtil$1;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method
