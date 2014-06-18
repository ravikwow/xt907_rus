.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        0x7f0b0046
        0x7f0b0047
        0x7f0b0048
        0x7f0b0049
        0x7f0b00cf
        0x7f0b00d0
        0x7f0b00d1
        0x7f0b004a
    .end array-data

    .line 26
    :array_1
    .array-data 4
        0x7f0b004b
        0x7f0b004c
        0x7f0b004d
        0x7f0b004e
        0x7f0b00cc
        0x7f0b00cd
        0x7f0b00ce
        0x7f0b004f
    .end array-data

    .line 39
    :array_2
    .array-data 4
        0x7f0b0051
        0x7f0b0052
        0x7f0b0053
        0x7f0b0054
        0x7f0b0055
    .end array-data

    .line 46
    :array_3
    .array-data 4
        0x7f0b00d6
        0x7f0b00d7
        0x7f0b00d8
        0x7f0b00d9
        0x7f0b00da
        0x7f0b00db
        0x7f0b00dc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
