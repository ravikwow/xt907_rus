.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;
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
    .line 4288
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 4292
    const-string v3, "subscription"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4295
    .local v2, "subscription":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4297
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastSupported:[Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    const-string v3, "com.motorola.cellbroadcastreceiver.CB_INFO_ON_SYSTEMUI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4308
    const-string v3, "enable"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 4313
    .local v1, "enable":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastActive:[Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z

    move-result-object v3

    aput-boolean v1, v3, v2

    .line 4325
    if-nez v1, :cond_0

    .line 4326
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCellBroadcastLabel:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4327
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsCellBroadcastLabelPopulated:[Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)[Z

    move-result-object v3

    aput-boolean v5, v3, v2

    .line 4334
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCellBroadcastLabelVisibility()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4341
    .end local v1    # "enable":Z
    :cond_1
    return-void
.end method
