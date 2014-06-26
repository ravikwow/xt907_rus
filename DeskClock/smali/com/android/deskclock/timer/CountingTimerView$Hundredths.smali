.class Lcom/android/deskclock/timer/CountingTimerView$Hundredths;
.super Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
.source "CountingTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/CountingTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Hundredths"
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;FLjava/lang/String;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "spacingRatio"    # F
    .param p3, "allDigits"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;-><init>(Landroid/graphics/Paint;FLjava/lang/String;)V

    .line 201
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/String;FF)F
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 209
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v0

    add-float v4, p3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->drawTime(Landroid/graphics/Canvas;Ljava/lang/String;IFF)F

    move-result v0

    return v0
.end method
