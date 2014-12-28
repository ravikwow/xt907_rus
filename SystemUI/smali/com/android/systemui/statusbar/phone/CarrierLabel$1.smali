.class Lcom/android/systemui/statusbar/phone/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowSpn:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$002(Lcom/android/systemui/statusbar/phone/CarrierLabel;Z)Z

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCachespn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$102(Lcom/android/systemui/statusbar/phone/CarrierLabel;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowPlmn:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$202(Lcom/android/systemui/statusbar/phone/CarrierLabel;Z)Z

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheplmn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$302(Lcom/android/systemui/statusbar/phone/CarrierLabel;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    # getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowSpn:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    # getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCachespn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    # getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowPlmn:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    # getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheplmn:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceState:Landroid/telephony/ServiceState;

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    # getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowSpn:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    # getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCachespn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    # getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowPlmn:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    # getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheplmn:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
