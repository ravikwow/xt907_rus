.class Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmsMessageWithState"
.end annotation


# instance fields
.field public mSaved:Z

.field public mSms:Landroid/telephony/SmsMessage;


# direct methods
.method public constructor <init>(Landroid/telephony/SmsMessage;)V
    .locals 1
    .param p1, "msg"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;->mSms:Landroid/telephony/SmsMessage;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/ClassZeroActivity$SmsMessageWithState;->mSaved:Z

    .line 77
    return-void
.end method
