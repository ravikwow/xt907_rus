.class Lcom/android/contacts/vcard/CancelActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CancelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/CancelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/CancelActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/CancelActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/contacts/vcard/CancelActivity$1;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "com.android.contacts.vard.import_complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.contacts.vard.export_complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/vcard/CancelActivity$1;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 67
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    return-void
.end method
