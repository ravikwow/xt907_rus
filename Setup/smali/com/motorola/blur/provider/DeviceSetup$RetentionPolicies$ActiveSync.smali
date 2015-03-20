.class public final Lcom/motorola/blur/provider/DeviceSetup$RetentionPolicies$ActiveSync;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup$RetentionPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveSync"
.end annotation


# static fields
.field public static final ALL:I = 0x5

.field public static final DEFAULT:I = 0x1

.field public static final ONE_DAY:I = 0x0

.field public static final ONE_MONTH:I = 0x4

.field public static final ONE_WEEK:I = 0x2

.field public static final THREE_DAYS:I = 0x1

.field public static final TWO_WEEKS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retentionPolicyToSyncAmount(I)I
    .locals 1
    .param p0, "policy"    # I

    .prologue
    const/4 v0, 0x2

    .line 1247
    packed-switch p0, :pswitch_data_0

    .line 1254
    :goto_0
    :pswitch_0
    return v0

    .line 1248
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1249
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1250
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 1251
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 1253
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 1247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static syncAmountToRententionPolicy(I)I
    .locals 1
    .param p0, "syncAmount"    # I

    .prologue
    const/4 v0, 0x1

    .line 1264
    packed-switch p0, :pswitch_data_0

    .line 1271
    :goto_0
    :pswitch_0
    return v0

    .line 1265
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 1266
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1267
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1268
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 1270
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 1264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
