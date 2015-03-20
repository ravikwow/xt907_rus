.class Lcom/android/phone/ReferenceCountryDetail$1;
.super Ljava/lang/Object;
.source "ReferenceCountryDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ReferenceCountryDetail;->setChangeListener()V
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
    .line 175
    iput-object p1, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 177
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 179
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    # getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/ReferenceCountryDetail;->access$000(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const-string v2, "ref_country_code"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_0
    :goto_0
    const-string v2, "cur_country_updated_by_user"

    invoke-static {v0, v2, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    return v4

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    # getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/ReferenceCountryDetail;->access$100(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 194
    const-string v2, "ref_country_idd"

    invoke-static {v0, v2, v1}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    # getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/ReferenceCountryDetail;->access$200(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 197
    const-string v2, "ref_country_ndd"

    invoke-static {v0, v2, v1}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    # getter for: Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/ReferenceCountryDetail;->access$300(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 200
    const-string v2, "ref_country_area_code"

    invoke-static {v0, v2, v1}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 202
    :cond_4
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    # getter for: Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/ReferenceCountryDetail;->access$400(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 204
    const-string v2, "ref_country_mdn_len"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 207
    :cond_5
    const-string v2, "ref_country_mdn_len"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
