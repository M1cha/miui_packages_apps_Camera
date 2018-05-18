.class public Lcom/android/camera/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/LocationManager$Listener;,
        Lcom/android/camera/LocationManager$LocationListener;
    }
.end annotation


# static fields
.field private static sLocationManager:Lcom/android/camera/LocationManager;


# instance fields
.field private mListener:Lcom/android/camera/LocationManager$Listener;

.field mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRecordLocation:Z

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static synthetic -get0(Lcom/android/camera/LocationManager;)Lcom/android/camera/LocationManager$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/LocationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/LocationManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/LocationManager;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/LocationManager;->cancelTimer()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/LocationManager;->stopReceivingGPSLocationUpdates()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/LocationManager$LocationListener;

    new-instance v1, Lcom/android/camera/LocationManager$LocationListener;

    const-string/jumbo v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/LocationManager$LocationListener;

    const-string/jumbo v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    return-void
.end method

.method private cancelTimer()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/LocationManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocationManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/camera/LocationManager;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/camera/LocationManager;
    .locals 1

    sget-object v0, Lcom/android/camera/LocationManager;->sLocationManager:Lcom/android/camera/LocationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/LocationManager;

    invoke-direct {v0}, Lcom/android/camera/LocationManager;-><init>()V

    sput-object v0, Lcom/android/camera/LocationManager;->sLocationManager:Lcom/android/camera/LocationManager;

    :cond_0
    sget-object v0, Lcom/android/camera/LocationManager;->sLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method private startReceivingLocationUpdates()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-direct {p0}, Lcom/android/camera/LocationManager;->cancelTimer()V

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/camera/LocationManager;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/camera/LocationManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/LocationManager$1;-><init>(Lcom/android/camera/LocationManager;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    const-string/jumbo v0, "LocationManager"

    const-string/jumbo v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v0, "LocationManager"

    const-string/jumbo v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v6

    const-string/jumbo v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v7

    const-string/jumbo v0, "LocationManager"

    const-string/jumbo v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private stopReceivingGPSLocationUpdates()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v1, v1, v4

    iput-boolean v4, v1, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    const-string/jumbo v1, "LocationManager"

    const-string/jumbo v2, "stopReceivingGPSLocationUpdates"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/LocationManager$Listener;->hideGpsOnScreenIndicator()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocationManager"

    const-string/jumbo v2, "fail to remove location listeners, ignore"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/LocationManager;->cancelTimer()V

    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocationManager"

    const-string/jumbo v3, "fail to remove location listeners, ignore"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "LocationManager"

    const-string/jumbo v3, "stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    invoke-interface {v2}, Lcom/android/camera/LocationManager$Listener;->hideGpsOnScreenIndicator()V

    :cond_2
    return-void
.end method

.method private static validateLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setTime(J)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/LocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "LocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get current location, it is from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/camera/LocationManager;->validateLocation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "LocationManager"

    const-string/jumbo v3, "No location received yet."

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public recordLocation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/LocationManager;->startReceivingLocationUpdates()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method
