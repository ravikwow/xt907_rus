.class Lcom/android/contacts/CallDetailActivity$5;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/CallDetailActivity;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;

.field final synthetic val$message:Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$5;->this$0:Lcom/android/contacts/CallDetailActivity;

    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$5;->val$message:Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$5;->this$0:Lcom/android/contacts/CallDetailActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity$5;->val$message:Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    iget-object v3, v3, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 885
    return-void
.end method
