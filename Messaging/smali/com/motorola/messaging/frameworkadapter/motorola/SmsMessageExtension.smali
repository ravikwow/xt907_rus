.class public Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;
.super Ljava/lang/Object;
.source "SmsMessageExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I
    .locals 1
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "ifSupportNationalTable"    # Z
    .param p3, "ifSupportLockingShiftTable"    # Z
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-static {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getCallbackNumberAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "wrapped"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 12
    invoke-static {p0}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->getCallbackNumberAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriority(Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p0, "wrapped"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->getPriority(Landroid/telephony/SmsMessage;)I

    move-result v0

    return v0
.end method
