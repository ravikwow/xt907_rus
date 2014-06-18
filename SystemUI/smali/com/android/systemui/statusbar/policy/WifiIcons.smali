.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final QS_WIFI_SIGNAL_STRENGTH_WIDE:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_WIDE:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 22
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 48
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_WIDE:[[I

    .line 61
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_WIDE:[[I

    .line 74
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    .line 22
    :array_0
    .array-data 4
        0x7f0202f1
        0x7f0202f4
        0x7f0202f7
        0x7f0202fa
        0x7f0202fd
    .end array-data

    :array_1
    .array-data 4
        0x7f0200a3
        0x7f0200a4
        0x7f0200a5
        0x7f0200a6
        0x7f0200a7
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x7f020058
        0x7f020059
        0x7f02005a
        0x7f02005b
        0x7f02005c
    .end array-data

    :array_3
    .array-data 4
        0x7f020058
        0x7f02005d
        0x7f02005e
        0x7f02005f
        0x7f020060
    .end array-data

    .line 48
    :array_4
    .array-data 4
        0x7f0202f3
        0x7f0202f6
        0x7f0202f9
        0x7f0202fc
        0x7f0202ff
    .end array-data

    :array_5
    .array-data 4
        0x7f0202f3
        0x7f0202f5
        0x7f0202f8
        0x7f0202fb
        0x7f0202fe
    .end array-data

    .line 61
    :array_6
    .array-data 4
        0x7f020184
        0x7f020185
        0x7f020186
        0x7f020187
        0x7f020188
    .end array-data

    :array_7
    .array-data 4
        0x7f020184
        0x7f020189
        0x7f02018a
        0x7f02018b
        0x7f02018c
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
