.class Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

.field final synthetic val$mainActionIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;->val$mainActionIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;->val$mainActionIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 583
    return-void
.end method
