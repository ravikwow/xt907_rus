.class Lcom/android/contacts/activities/DialtactsActivity$11;
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
    .line 984
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$11;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$11;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/activities/TransactionSafeActivity;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 1000
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$11;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/activities/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 990
    return-void
.end method
