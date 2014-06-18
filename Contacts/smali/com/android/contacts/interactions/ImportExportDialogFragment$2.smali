.class Lcom/android/contacts/interactions/ImportExportDialogFragment$2;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 145
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    packed-switch v0, :pswitch_data_0

    .line 181
    const-string v2, "ImportExportDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v4}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 185
    :goto_0
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 188
    :cond_0
    return-void

    .line 149
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z
    invoke-static {v1, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z

    move-result v0

    goto :goto_0

    .line 154
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 156
    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/interactions/ImportExportDialogFragment;->doShareVisibleContacts()V
    invoke-static {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)V

    move v0, v1

    .line 161
    goto :goto_0

    .line 167
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.android.simmanager.ACTION_EXPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 169
    goto :goto_0

    .line 173
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.android.simmanager.ACTION_DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 175
    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00bb
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
