.class Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;
.super Ljava/lang/Object;
.source "WifiP2pGroupCreateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 141
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedGroupList:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->deviceNameCount:I
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mPersistentGroup:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mNewSsid:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$502(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedGroupList:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->mSavedDeviceName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;->access$502(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
