.class final Lcom/google/common/math/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# static fields
.field private static final ONE_BITS:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 180
    const-wide/high16 v0, 0x3ff0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static getExponent(D)I
    .locals 6
    .param p0, "d"    # D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 80
    .local v0, "bits":J
    const-wide/high16 v3, 0x7ff0000000000000L

    and-long/2addr v3, v0

    const/16 v5, 0x34

    shr-long/2addr v3, v5

    long-to-int v2, v3

    .line 81
    .local v2, "exponent":I
    add-int/lit16 v2, v2, -0x3ff

    .line 82
    return v2
.end method
