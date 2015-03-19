.class Lcom/android/settings/wifi/ManageNetworks$5;
.super Ljava/lang/Object;
.source "ManageNetworks.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/ManageNetworks;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ManageNetworks;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ManageNetworks;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks$5;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$5;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0352

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method
