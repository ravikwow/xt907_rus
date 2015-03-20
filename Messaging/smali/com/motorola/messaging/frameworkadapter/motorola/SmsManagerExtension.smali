.class public Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;
.super Ljava/lang/Object;
.source "SmsManagerExtension.java"


# static fields
.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I

.field public static final RESULT_ERROR_TEMPORARY_FAILURE:I

.field public static final SMS_STACK_TYPE_CDMA:I

.field public static final SMS_STACK_TYPE_GSM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget v0, Lcom/motorola/messaging/frameworkadapter/telephony/SmsManager;->RESULT_ERROR_TEMPORARY_FAILURE:I

    sput v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    .line 13
    sget v0, Lcom/motorola/messaging/frameworkadapter/telephony/SmsManager;->RESULT_ERROR_FDN_CHECK_FAILURE:I

    sput v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_FDN_CHECK_FAILURE:I

    .line 14
    sget v0, Lcom/motorola/messaging/frameworkadapter/telephony/SmsManager;->SMS_STACK_TYPE_GSM:I

    sput v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->SMS_STACK_TYPE_GSM:I

    .line 15
    sget v0, Lcom/motorola/messaging/frameworkadapter/telephony/SmsManager;->SMS_STACK_TYPE_CDMA:I

    sput v0, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->SMS_STACK_TYPE_CDMA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 19
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v0, p0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static divideMessage(Ljava/lang/String;ZZZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "ifSupportNationalTable"    # Z
    .param p2, "ifSupportLockingShiftTable"    # Z
    .param p3, "useOnly7bit"    # Z
    .param p4, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsManager;->divideMessage(Ljava/lang/String;ZZZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p5, "cbNumber"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "encodingMethod"    # I
    .param p8, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p0 .. p8}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V

    .line 32
    return-void
.end method

.method public static sendTextMessageMore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "cbNumber"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "encodingMethod"    # I
    .param p8, "language"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "SmsManagerExtension"

    const-string v1, "API-FALLBACK - sendTextMessageMore was called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .local v3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 43
    invoke-static/range {v0 .. v8}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V

    .line 45
    return-void
.end method
