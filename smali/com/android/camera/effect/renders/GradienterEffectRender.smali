.class public Lcom/android/camera/effect/renders/GradienterEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "GradienterEffectRender.java"


# instance fields
.field private mKeepZero:Z

.field private mLastRotation:F

.field private mShiftTimes:I

.field private mUniformAngle:I

.field private mUniformTargetSize:I

.field private mUniformTexSize:I

.field private mZero:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    return-void
.end method

.method private filteRotation(F)V
    .locals 3

    const/high16 v2, 0x43b40000    # 360.0f

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr p1, v2

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    :goto_1
    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "GradienterEffectRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "filteRotation deviceRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mLastRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getRotation()F
    .locals 7

    const/4 v6, 0x5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    cmpg-float v4, v0, v3

    if-gez v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    return v3

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/GradienterEffectRender;->filteRotation(F)V

    iget v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mLastRotation:F

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectController;->getOrientation()I

    move-result v5

    int-to-float v5, v5

    sub-float v2, v4, v5

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v2, v4

    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    const/4 v1, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mKeepZero:Z

    if-eq v1, v4, :cond_5

    iput-boolean v1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mKeepZero:Z

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mShiftTimes:I

    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mZero:Z

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mShiftTimes:I

    if-ge v4, v6, :cond_6

    iget v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mShiftTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mShiftTimes:I

    :cond_6
    iget v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mShiftTimes:I

    if-ne v4, v6, :cond_2

    iget-boolean v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mKeepZero:Z

    iput-boolean v4, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mZero:Z

    goto :goto_1
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D sTexture; \nuniform float sAngle; \nuniform vec2 vTexSize; \nuniform vec2 vTargetSize; \nuniform float uAlpha; \nvoid main() \n{ \n  vec4 color = texture2D(sTexture, vTexCoord); \n  if (sAngle != 0.0) { \n    float pf = min(vTargetSize.s,vTargetSize.t) / max(vTargetSize.s,vTargetSize.t); \n    float mOrigin = atan(pf); \n    float rorate_angle = -sAngle; \n    float fangle = radians(abs(rorate_angle)) + mOrigin; \n    float s = sin(mOrigin) / sin(fangle);\n    s = 1.0 / s; \n    float center_x = 0.5 * vTexSize.s; \n    float center_y = 0.5 * vTexSize.t; \n    float cosangle = cos(radians(rorate_angle)); \n    float sinangle = sin(radians(rorate_angle)); \n    float x = vTexCoord.s * vTexSize.s; \n    float y = vTexCoord.t * vTexSize.t; \n    float  x1 = x - center_x; \n    float  y1 = y - center_y; \n    x = cosangle * x1 + sinangle * y1 + center_x; \n    y = -1.0 * sinangle * x1 + cosangle * y1 + center_y; \n    x = s * (x - center_x) + center_x - (vTexSize.s - vTargetSize.s) * 0.5; \n     y = s * (y - center_y) + center_y - (vTexSize.t - vTargetSize.t) * 0.5; \n     float dis = min( min(y,vTargetSize.t - y),min(x, vTargetSize.s - x)); \n    float ap = abs(dis) / s /1.0; \n    float a = sqrt(exp(-1.0 * ap * ap)); \n    float yy = float(int(y + 0.5)); \n    float xx = float(int(x + 0.5)); \n    if (yy <= 0.0 || yy >= vTargetSize.t || xx <= 0.0 || xx >= vTargetSize.s) { \n        color = mix(color * 0.4,vec4(1.0,1.0,1.0,1.0),a); \n    } else { \n        color = mix(color,vec4(1.0,1.0,1.0,1.0),a); \n    } \n    color = clamp(color,0.0,1.0); \n  } \n  gl_FragColor = color*uAlpha; \n} \n"

    return-object v0
.end method

.method protected initShader()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mProgram:I

    const-string/jumbo v1, "sAngle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformAngle:I

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mProgram:I

    const-string/jumbo v1, "vTexSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTexSize:I

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mProgram:I

    const-string/jumbo v1, "vTargetSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTargetSize:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    iget v1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTexSize:I

    iget v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mPreviewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mPreviewHeight:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mPreviewHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTargetSize:I

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :goto_0
    iget v1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformAngle:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/GradienterEffectRender;->getRotation()F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mUniformTargetSize:I

    iget v2, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mPreviewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/effect/renders/GradienterEffectRender;->mPreviewHeight:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto :goto_0
.end method
