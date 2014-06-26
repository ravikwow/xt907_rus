.class public final Lcom/android/deskclock/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AnalogClock:[I

.field public static final GlowPadView:[I

.field public static final TextTime:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1793
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/deskclock/R$styleable;->AnalogClock:[I

    .line 1879
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/deskclock/R$styleable;->GlowPadView:[I

    .line 2101
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/deskclock/R$styleable;->TextTime:[I

    return-void

    .line 1793
    :array_0
    .array-data 4
        0x7f01000d
        0x7f01000e
        0x7f01000f
    .end array-data

    .line 1879
    :array_1
    .array-data 4
        0x10100af
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
    .end array-data

    .line 2101
    :array_2
    .array-data 4
        0x7f010010
        0x7f010011
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
