.class Lcom/android/phone/ReferenceCountryDetail$2;
.super Ljava/lang/Object;
.source "ReferenceCountryDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ReferenceCountryDetail;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ReferenceCountryDetail;


# direct methods
.method constructor <init>(Lcom/android/phone/ReferenceCountryDetail;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/phone/ReferenceCountryDetail$2;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 232
    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 233
    .local v0, "etPre":Landroid/preference/EditTextPreference;
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail$2;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    # getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/phone/ReferenceCountryDetail;->access$000(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 234
    const-string v1, "country_code"

    # setter for: Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/ReferenceCountryDetail;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail$2;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    # getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/phone/ReferenceCountryDetail;->access$100(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 236
    const-string v1, "country_idd"

    # setter for: Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/ReferenceCountryDetail;->access$502(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
