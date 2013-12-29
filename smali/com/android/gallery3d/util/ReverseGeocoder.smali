.class public Lcom/android/gallery3d/util/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGeoCache:Lcom/android/gallery3d/common/BlobCache;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 80
    const-string v0, "rev_geocoding"

    const/16 v1, 0x3e8

    const v2, 0x7d000

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    .line 83
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 85
    return-void
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, retVal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 415
    .end local v0           #retVal:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "dos"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public lookupAddress(DDZ)Landroid/location/Address;
    .locals 24
    .parameter "latitude"
    .parameter "longitude"
    .parameter "useCache"

    .prologue
    .line 307
    const-wide v3, 0x4056800000000000L

    add-double v3, v3, p1

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    const-wide v5, 0x4056800000000000L

    mul-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L

    add-double v5, v5, p3

    add-double/2addr v3, v5

    const-wide v5, 0x415854a640000000L

    mul-double/2addr v3, v5

    double-to-long v0, v3

    move-wide/from16 v19, v0

    .line 309
    .local v19, locationKey:J
    const/4 v12, 0x0

    .line 310
    .local v12, cachedLocation:[B
    if-eqz p5, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v3, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v12

    .line 313
    :cond_0
    const/4 v9, 0x0

    .line 314
    .local v9, address:Landroid/location/Address;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    .line 315
    .local v21, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v12, :cond_1

    array-length v3, v12

    if-nez v3, :cond_7

    .line 316
    :cond_1
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 317
    :cond_2
    const/4 v9, 0x0

    .line 396
    .end local v9           #address:Landroid/location/Address;
    .end local v21           #networkInfo:Landroid/net/NetworkInfo;
    :cond_3
    :goto_0
    return-object v9

    .line 319
    .restart local v9       #address:Landroid/location/Address;
    .restart local v21       #networkInfo:Landroid/net/NetworkInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v8, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    .line 320
    .local v10, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 321
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #address:Landroid/location/Address;
    check-cast v9, Landroid/location/Address;

    .line 322
    .restart local v9       #address:Landroid/location/Address;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 323
    .local v11, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 324
    .local v15, dos:Ljava/io/DataOutputStream;
    invoke-virtual {v9}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v18

    .line 325
    .local v18, locale:Ljava/util/Locale;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v9}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v9}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v22

    .line 331
    .local v22, numAddressLines:I
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 332
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 333
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 332
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 335
    :cond_5
    invoke-virtual {v9}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v9}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v9}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v9}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v9}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v9}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v9}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v9}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v9}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v3, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V

    .line 350
    :cond_6
    invoke-virtual {v15}, Ljava/io/FilterOutputStream;->close()V

    goto/16 :goto_0

    .line 393
    .end local v9           #address:Landroid/location/Address;
    .end local v10           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v11           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v15           #dos:Ljava/io/DataOutputStream;
    .end local v16           #i:I
    .end local v18           #locale:Ljava/util/Locale;
    .end local v21           #networkInfo:Landroid/net/NetworkInfo;
    .end local v22           #numAddressLines:I
    :catch_0
    move-exception v3

    .line 396
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 354
    .restart local v9       #address:Landroid/location/Address;
    .restart local v21       #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 356
    .local v14, dis:Ljava/io/DataInputStream;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v17

    .line 357
    .local v17, language:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v13

    .line 358
    .local v13, country:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v23

    .line 359
    .local v23, variant:Ljava/lang/String;
    const/16 v18, 0x0

    .line 360
    .restart local v18       #locale:Ljava/util/Locale;
    if-eqz v17, :cond_8

    .line 361
    if-nez v13, :cond_9

    .line 362
    new-instance v18, Ljava/util/Locale;

    .end local v18           #locale:Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v18       #locale:Ljava/util/Locale;
    :cond_8
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 370
    invoke-virtual {v14}, Ljava/io/FilterInputStream;->close()V

    .line 371
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v9

    goto/16 :goto_0

    .line 363
    :cond_9
    if-nez v23, :cond_a

    .line 364
    new-instance v18, Ljava/util/Locale;

    .end local v18           #locale:Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v18       #locale:Ljava/util/Locale;
    goto :goto_2

    .line 366
    :cond_a
    new-instance v18, Ljava/util/Locale;

    .end local v18           #locale:Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v18       #locale:Ljava/util/Locale;
    goto :goto_2

    .line 373
    :cond_b
    new-instance v9, Landroid/location/Address;

    .end local v9           #address:Landroid/location/Address;
    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 375
    .restart local v9       #address:Landroid/location/Address;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 377
    .restart local v22       #numAddressLines:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 378
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v9, v0, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 377
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 380
    :cond_c
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 381
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 382
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 383
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 385
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 386
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 387
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 388
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 389
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v14}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
