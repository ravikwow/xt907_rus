.class Lcom/motorola/messaging/transaction/UTManager$SMSMTManager;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SMSMTManager"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "UTnumber"    # I

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    .line 897
    return-void
.end method


# virtual methods
.method public getSMSFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 900
    invoke-static {p1}, Lcom/motorola/messaging/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 906
    .local v0, "msgs":[Landroid/telephony/SmsMessage;
    return-object v0
.end method
