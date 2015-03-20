.class Lcom/motorola/blur/privacy/PrivacyProfilesActivity$3;
.super Landroid/os/AsyncTask;
.source "PrivacyProfilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/PrivacyProfilesActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/PrivacyProfilesActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$3;->this$0:Lcom/motorola/blur/privacy/PrivacyProfilesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "buttonId"    # [Ljava/lang/Integer;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$3;->this$0:Lcom/motorola/blur/privacy/PrivacyProfilesActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->setProfileSetting(I)V
    invoke-static {v0, v1}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->access$000(Lcom/motorola/blur/privacy/PrivacyProfilesActivity;I)V

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 115
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$3;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
