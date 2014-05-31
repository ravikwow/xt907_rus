.class Lcom/android/settings/sdencryption/EncryptionUserActivity$MyListView;
.super Landroid/widget/ListView;
.source "EncryptionUserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/EncryptionUserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$MyListView;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .line 108
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 109
    return-void
.end method


# virtual methods
.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    .line 115
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$MyListView;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    # getter for: Lcom/android/settings/sdencryption/EncryptionUserActivity;->mUserAllowChangeSDEncSettings:Z
    invoke-static {v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$000(Lcom/android/settings/sdencryption/EncryptionUserActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity$MyListView;->this$0:Lcom/android/settings/sdencryption/EncryptionUserActivity;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/sdencryption/EncryptionUserActivity;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->access$100(Lcom/android/settings/sdencryption/EncryptionUserActivity;I)V

    .line 118
    :cond_0
    return v0
.end method
