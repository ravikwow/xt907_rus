.class Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;


# direct methods
.method constructor <init>(Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable$1;->this$0:Lcom/android/deskclock/Utils$ScreensaverMoveSaverRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 258
    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    return v0
.end method
