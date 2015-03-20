.class public Lcom/motorola/messaging/frameworkadapter/telephony/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# static fields
.field public static APN_ALREADY_ACTIVE:I

.field public static APN_REQUEST_FAILED:I

.field public static APN_REQUEST_STARTED:I

.field public static APN_TYPE_ALL:Ljava/lang/String;

.field public static APN_TYPE_DEFAULT:Ljava/lang/String;

.field public static APN_TYPE_HIPRI:Ljava/lang/String;

.field public static APN_TYPE_IMS:Ljava/lang/String;

.field public static APN_TYPE_MMS:Ljava/lang/String;

.field public static DATA_APN_KEY:Ljava/lang/String;

.field public static DATA_IFACE_NAME_KEY:Ljava/lang/String;

.field public static FEATURE_ENABLE_HIPRI:Ljava/lang/String;

.field public static FEATURE_ENABLE_MMS:Ljava/lang/String;

.field public static REASON_APN_CHANGED:Ljava/lang/String;

.field public static REASON_APN_SWITCHED:Ljava/lang/String;

.field public static REASON_DATA_ENABLED:Ljava/lang/String;

.field public static STATE_CHANGE_REASON_KEY:Ljava/lang/String;

.field public static STATE_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_ALREADY_ACTIVE:I

    .line 5
    const/4 v0, 0x1

    sput v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_REQUEST_STARTED:I

    .line 6
    const/4 v0, 0x3

    sput v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_REQUEST_FAILED:I

    .line 7
    const-string v0, "enableMMS"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->FEATURE_ENABLE_MMS:Ljava/lang/String;

    .line 8
    const-string v0, "enableHIPRI"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->FEATURE_ENABLE_HIPRI:Ljava/lang/String;

    .line 9
    const-string v0, "default"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_TYPE_DEFAULT:Ljava/lang/String;

    .line 10
    const-string v0, "*"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_TYPE_ALL:Ljava/lang/String;

    .line 11
    const-string v0, "mms"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_TYPE_MMS:Ljava/lang/String;

    .line 12
    const-string v0, "hipri"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_TYPE_HIPRI:Ljava/lang/String;

    .line 13
    const-string v0, "state"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->STATE_KEY:Ljava/lang/String;

    .line 14
    const-string v0, "reason"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->STATE_CHANGE_REASON_KEY:Ljava/lang/String;

    .line 15
    const-string v0, "apn"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->DATA_APN_KEY:Ljava/lang/String;

    .line 16
    const-string v0, "iface"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->DATA_IFACE_NAME_KEY:Ljava/lang/String;

    .line 17
    const-string v0, "apnChanged"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->REASON_APN_CHANGED:Ljava/lang/String;

    .line 18
    const-string v0, "dataEnabled"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->REASON_DATA_ENABLED:Ljava/lang/String;

    .line 19
    const-string v0, "apnSwitched"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->REASON_APN_SWITCHED:Ljava/lang/String;

    .line 20
    const-string v0, "ims"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_TYPE_IMS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
