.class Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;
.super Landroid/os/AsyncTask;
.source "ContactDetailVCardPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/vcard/VCardEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;
    .param p2, "x1"    # Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;-><init>(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/vcard/VCardEntry;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 278
    const-string v0, "ContactDetailVCardPreviewActivity"

    const-string v1, "Enter doInBackground(): start parseVCard."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$300(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Lcom/motorola/contacts/vcard/PreviewRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mData:Landroid/net/Uri;
    invoke-static {v2}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$400(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/contacts/vcard/VCardPreviewUtils;->constructPreviewRequest(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/contacts/vcard/PreviewRequest;

    move-result-object v1

    # setter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;
    invoke-static {v0, v1}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$302(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Lcom/motorola/contacts/vcard/PreviewRequest;)Lcom/motorola/contacts/vcard/PreviewRequest;

    .line 281
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mNeedSettingMenu:Z
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$500(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mNeedSettingMenu:Z
    invoke-static {v0, v1}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$502(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Z)Z

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$300(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Lcom/motorola/contacts/vcard/PreviewRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;
    invoke-static {v2}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$300(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Lcom/motorola/contacts/vcard/PreviewRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/contacts/vcard/PreviewRequest;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I
    invoke-static {v3}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$700(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/motorola/contacts/vcard/VCardPreviewUtils;->getVCardStrAt(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardStr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$602(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;
    invoke-static {v2}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$300(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Lcom/motorola/contacts/vcard/PreviewRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$600(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/motorola/contacts/vcard/VCardPreviewUtils;->parseVCardStr(Landroid/content/Context;Lcom/motorola/contacts/vcard/PreviewRequest;Ljava/lang/String;)Lcom/android/vcard/VCardEntry;

    move-result-object v1

    # setter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;
    invoke-static {v0, v1}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$802(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Lcom/android/vcard/VCardEntry;)Lcom/android/vcard/VCardEntry;

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntry:Lcom/android/vcard/VCardEntry;
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$800(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    return-object v0

    .line 290
    :cond_1
    const-string v0, "ContactDetailVCardPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in retrieve mPreviewRequest when parsing vcard file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mData:Landroid/net/Uri;
    invoke-static {v2}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$400(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 276
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->doInBackground([Ljava/lang/Void;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/vcard/VCardEntry;)V
    .locals 3
    .param p1, "result"    # Lcom/android/vcard/VCardEntry;

    .prologue
    const/4 v2, 0x0

    .line 296
    const-string v0, "ContactDetailVCardPreviewActivity"

    const-string v1, "Enter onPostExecute()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mNeedSettingMenu:Z
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$500(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$700(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuBack:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$900(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuBack:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$900(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$300(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Lcom/motorola/contacts/vcard/PreviewRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mCurrentVCardEntryIndex:I
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$700(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mPreviewRequest:Lcom/motorola/contacts/vcard/PreviewRequest;
    invoke-static {v1}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$300(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Lcom/motorola/contacts/vcard/PreviewRequest;

    move-result-object v1

    iget v1, v1, Lcom/motorola/contacts/vcard/PreviewRequest;->entryCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuNext:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$1000(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mMenuNext:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$1000(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # setter for: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->mNeedSettingMenu:Z
    invoke-static {v0, v2}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$502(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;Z)Z

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # invokes: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$100(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V

    .line 307
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # invokes: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->previewVCard()V
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$1100(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V

    .line 308
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 276
    check-cast p1, Lcom/android/vcard/VCardEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$VCardParseTask;->onPostExecute(Lcom/android/vcard/VCardEntry;)V

    return-void
.end method
