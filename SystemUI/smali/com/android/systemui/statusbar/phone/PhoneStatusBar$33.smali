.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 4212
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 4216
    const-string v5, "subscription"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 4219
    .local v4, "subscription":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4221
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z

    move-result-object v5

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z

    move-result-object v5

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    if-eqz v5, :cond_3

    const-string v5, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4240
    const/4 v2, 0x0

    .line 4241
    .local v2, "cbMsg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 4242
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 4243
    const-string v5, "message"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 4244
    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 4246
    .end local v1    # "cbMessage":Landroid/telephony/CellBroadcastMessage;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4249
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z

    move-result-object v5

    aput-boolean v7, v5, v4

    .line 4250
    if-eqz v2, :cond_2

    .line 4251
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4252
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z

    move-result-object v5

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 4254
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 4272
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCellBroadcastLabelVisibility()V
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4285
    .end local v2    # "cbMsg":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_3
    return-void
.end method
