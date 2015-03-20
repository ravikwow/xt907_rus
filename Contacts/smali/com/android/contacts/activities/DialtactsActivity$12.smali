.class Lcom/android/contacts/activities/DialtactsActivity$12;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$12;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$12;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteCallAction:Z
    invoke-static {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1602(Lcom/android/contacts/activities/DialtactsActivity;Z)Z

    .line 1079
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$12;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/activities/TransactionSafeActivity;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 1082
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$12;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteCallAction:Z
    invoke-static {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$1602(Lcom/android/contacts/activities/DialtactsActivity;Z)Z

    .line 1071
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$12;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/activities/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 1074
    return-void
.end method
