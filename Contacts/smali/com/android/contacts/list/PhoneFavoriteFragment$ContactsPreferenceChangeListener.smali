.class Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/PhoneFavoriteFragment$1;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    # invokes: Lcom/android/contacts/list/PhoneFavoriteFragment;->loadContactsPreferences()Z
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1300(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    # invokes: Lcom/android/contacts/list/PhoneFavoriteFragment;->requestReloadAllContacts()V
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1400(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    .line 199
    :cond_0
    return-void
.end method
