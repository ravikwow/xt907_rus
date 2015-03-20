.class final Lcom/motorola/messaging/settings/MessageSettings$3;
.super Ljava/lang/Object;
.source "MessageSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/settings/MessageSettings;->setSmsEmailGatewayNumber(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$final_value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/motorola/messaging/settings/MessageSettings$3;->val$final_value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 921
    const-string v0, "sms_pref_key_email_gateway_num"

    iget-object v1, p0, Lcom/motorola/messaging/settings/MessageSettings$3;->val$final_value:Ljava/lang/String;

    # getter for: Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/contracts/messaging/Provider;->updateSettingValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 922
    return-void
.end method
