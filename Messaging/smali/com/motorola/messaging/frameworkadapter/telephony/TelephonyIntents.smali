.class public Lcom/motorola/messaging/frameworkadapter/telephony/TelephonyIntents;
.super Ljava/lang/Object;
.source "TelephonyIntents.java"


# static fields
.field public static ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String;

.field public static ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String;

.field public static ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "android.intent.action.SERVICE_STATE"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/TelephonyIntents;->ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String;

    .line 5
    const-string v0, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/TelephonyIntents;->ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String;

    .line 6
    const-string v0, "android.intent.action.ANY_DATA_STATE"

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/TelephonyIntents;->ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
