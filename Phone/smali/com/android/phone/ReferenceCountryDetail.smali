.class public Lcom/android/phone/ReferenceCountryDetail;
.super Landroid/preference/PreferenceActivity;
.source "ReferenceCountryDetail.java"


# static fields
.field private static final ACCEPTED_CHARS:[C

.field private static final DBG:Z

.field private static final VDBG:Z

.field private static mActPre:Ljava/lang/String;


# instance fields
.field private mAreaCode:Landroid/preference/EditTextPreference;

.field private mCtryCode:Landroid/preference/EditTextPreference;

.field private mCtryIdd:Landroid/preference/EditTextPreference;

.field private mCtryNdd:Landroid/preference/EditTextPreference;

.field private mIsDetailInfoReadOnly:Z

.field private mNumLen:Landroid/preference/EditTextPreference;

.field private mSelectedItemMcc:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 49
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/ReferenceCountryDetail;->DBG:Z

    .line 51
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    .line 55
    const-string v0, "0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/phone/ReferenceCountryDetail;->ACCEPTED_CHARS:[C

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    :cond_1
    move v1, v2

    .line 51
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 69
    iput v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    .line 70
    iput-boolean v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mIsDetailInfoReadOnly:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ReferenceCountryDetail;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ReferenceCountryDetail;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ReferenceCountryDetail;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ReferenceCountryDetail;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ReferenceCountryDetail;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    sput-object p0, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/ReferenceCountryDetail;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ReferenceCountryDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    return-void
.end method

.method private addTextChangedListenerForEditText()V
    .locals 2

    .prologue
    .line 445
    new-instance v0, Lcom/android/phone/ReferenceCountryDetail$3;

    invoke-direct {v0, p0}, Lcom/android/phone/ReferenceCountryDetail$3;-><init>(Lcom/android/phone/ReferenceCountryDetail;)V

    .line 462
    .local v0, "watcher":Landroid/text/TextWatcher;
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 463
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 464
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 467
    const-string v0, "ReferenceCountryDetail"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method private resetAllValue()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 249
    iget v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    invoke-static {v2}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 250
    .local v0, "entryInfo":Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 253
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 255
    const-string v2, "ref_country_code"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object v2, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 260
    const-string v2, "ref_country_idd"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    :goto_0
    iget-object v2, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 270
    const-string v2, "ref_country_ndd"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    :goto_1
    iget-object v2, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 280
    const-string v2, "ref_country_area_code"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    :goto_2
    iget v2, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    if-eq v2, v4, :cond_4

    .line 289
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 291
    const-string v2, "ref_country_mdn_len"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_3
    return-void

    .line 263
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 265
    const-string v2, "ref_country_idd"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 273
    :cond_2
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 275
    const-string v2, "ref_country_ndd"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 283
    :cond_3
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 285
    const-string v2, "ref_country_area_code"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 294
    :cond_4
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 296
    const-string v2, "ref_country_mdn_len"

    invoke-static {v1, v2, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method private setChangeListener()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/android/phone/ReferenceCountryDetail$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ReferenceCountryDetail$1;-><init>(Lcom/android/phone/ReferenceCountryDetail;)V

    .line 217
    .local v0, "mListener":Landroid/preference/Preference$OnPreferenceChangeListener;
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    return-void
.end method

.method private setClickListener()V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/android/phone/ReferenceCountryDetail$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ReferenceCountryDetail$2;-><init>(Lcom/android/phone/ReferenceCountryDetail;)V

    .line 241
    .local v0, "listener":Landroid/preference/Preference$OnPreferenceClickListener;
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 242
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 243
    return-void
.end method

.method private setDetailValue()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 306
    const/4 v5, 0x0

    .line 307
    .local v5, "refCtryName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 308
    .local v8, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 309
    .local v7, "res":Landroid/content/res/Resources;
    const-string v10, "cur_country_updated_by_user"

    invoke-static {v8, v10, v13}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 311
    .local v9, "value":I
    sget-boolean v10, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "REF_COUNTRY_UPDATED_BY_USER = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 313
    :cond_0
    if-ne v9, v14, :cond_7

    .line 314
    const-string v10, "ref_country_code"

    invoke-static {v8, v10, v13}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 316
    .local v2, "refCtryCode":I
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 319
    const-string v10, "ref_country_idd"

    invoke-static {v8, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "refCtryIdd":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 322
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 326
    :cond_1
    const-string v10, "ref_country_ndd"

    invoke-static {v8, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "refCtryNdd":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 329
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 333
    :cond_2
    const-string v10, "ref_country_area_code"

    invoke-static {v8, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "refCtryArea":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 336
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 340
    :cond_3
    const-string v10, "ref_country_mdn_len"

    invoke-static {v8, v10, v13}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 342
    .local v4, "refCtryLen":I
    if-eq v4, v12, :cond_4

    .line 343
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 348
    :cond_4
    const-string v10, "ref_country_name"

    invoke-static {v8, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 382
    .end local v1    # "refCtryArea":Ljava/lang/String;
    .end local v2    # "refCtryCode":I
    .end local v3    # "refCtryIdd":Ljava/lang/String;
    .end local v4    # "refCtryLen":I
    .end local v6    # "refCtryNdd":Ljava/lang/String;
    :cond_5
    :goto_0
    if-eqz v5, :cond_6

    .line 383
    const v10, 0x7f0c0394

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v7, v5}, Lcom/android/phone/AssistedDialingUtil;->ctryNameToDisplayName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    :cond_6
    return-void

    .line 352
    :cond_7
    iget v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    invoke-static {v10}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 353
    .local v0, "entryInfo":Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_5

    .line 355
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    iget v11, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    iget v11, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 357
    iget v10, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    if-eq v10, v12, :cond_8

    .line 358
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    iget v11, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    iget v11, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 361
    :cond_8
    iget-object v10, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    if-eqz v10, :cond_9

    .line 362
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 365
    :cond_9
    iget-object v10, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 366
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 370
    :cond_a
    iget-object v10, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    if-eqz v10, :cond_c

    .line 371
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 374
    sget-boolean v10, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Update REF_COUNTRY_AREA_CODE value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 375
    :cond_b
    const-string v10, "ref_country_area_code"

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v8, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    :cond_c
    iget-object v5, v0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const v10, 0x7f0c039a

    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.android.phone.assist.detail.mcc"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    .line 85
    sget-boolean v8, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get Item\'s mcc code ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.android.phone.assist.detail.ro"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mIsDetailInfoReadOnly:Z

    .line 90
    iget-boolean v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mIsDetailInfoReadOnly:Z

    if-eqz v8, :cond_8

    .line 91
    const v8, 0x7f040003

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 93
    const-string v8, "country_code"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 94
    .local v3, "mCtryCodeRo":Landroid/preference/Preference;
    const-string v8, "country_idd"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 95
    .local v4, "mCtryIddRo":Landroid/preference/Preference;
    const-string v8, "country_ndd"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 96
    .local v5, "mCtryNddRo":Landroid/preference/Preference;
    const-string v8, "area_city_code"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 97
    .local v2, "mAreaCodeRo":Landroid/preference/Preference;
    const-string v8, "num_len"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 99
    .local v6, "mNumLenRo":Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 100
    .local v7, "res":Landroid/content/res/Resources;
    iget v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    invoke-static {v8}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v1

    .line 101
    .local v1, "entryInfo":Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v1, :cond_6

    .line 103
    if-eqz v3, :cond_1

    .line 104
    iget v8, v1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    :cond_1
    if-eqz v6, :cond_2

    iget v8, v1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 107
    iget v8, v1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    :cond_2
    if-eqz v4, :cond_3

    iget-object v8, v1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 110
    iget-object v8, v1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    :cond_3
    if-eqz v5, :cond_4

    iget-object v8, v1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 113
    iget-object v8, v1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    :cond_4
    if-eqz v2, :cond_5

    iget-object v8, v1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 116
    iget-object v8, v1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    :cond_5
    const v8, 0x7f0c0394

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/phone/AssistedDialingUtil;->ctryNameToDisplayName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    .end local v1    # "entryInfo":Lcom/motorola/android/telephony/MCCEntry;
    .end local v2    # "mAreaCodeRo":Landroid/preference/Preference;
    .end local v3    # "mCtryCodeRo":Landroid/preference/Preference;
    .end local v4    # "mCtryIddRo":Landroid/preference/Preference;
    .end local v5    # "mCtryNddRo":Landroid/preference/Preference;
    .end local v6    # "mNumLenRo":Landroid/preference/Preference;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 165
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_7

    .line 166
    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 168
    :cond_7
    return-void

    .line 125
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_8
    const v8, 0x7f040002

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 127
    const-string v8, "country_code"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    .line 128
    const-string v8, "country_idd"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    .line 129
    const-string v8, "country_ndd"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    .line 130
    const-string v8, "area_city_code"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    .line 131
    const-string v8, "num_len"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    .line 133
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    if-eqz v8, :cond_9

    .line 134
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 136
    :cond_9
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    if-eqz v8, :cond_a

    .line 137
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 139
    :cond_a
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    if-eqz v8, :cond_b

    .line 140
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 142
    :cond_b
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    if-eqz v8, :cond_c

    .line 143
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 145
    :cond_c
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    if-eqz v8, :cond_d

    .line 146
    iget-object v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v10}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 149
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->setDetailValue()V

    .line 153
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->setClickListener()V

    .line 157
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->setChangeListener()V

    .line 162
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->addTextChangedListenerForEditText()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mIsDetailInfoReadOnly:Z

    if-nez v0, :cond_0

    .line 391
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 392
    const v0, 0x7f0c039b

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 394
    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 399
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 411
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 401
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->resetAllValue()V

    goto :goto_0

    .line 404
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/ReferenceCountryListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 399
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 421
    sget-boolean v4, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On restore states, actPre = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 422
    :cond_0
    sget-object v4, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 423
    .local v2, "etPre":Landroid/preference/EditTextPreference;
    if-eqz v2, :cond_2

    .line 424
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v3

    .line 425
    .local v3, "len":I
    sget-boolean v4, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Onrestore editText textLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 426
    :cond_1
    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 427
    .local v0, "actDialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_2

    .line 428
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 429
    .local v1, "button":Landroid/widget/Button;
    if-nez v1, :cond_3

    .line 439
    .end local v0    # "actDialog":Landroid/app/AlertDialog;
    .end local v1    # "button":Landroid/widget/Button;
    .end local v3    # "len":I
    :cond_2
    :goto_0
    return-void

    .line 430
    .restart local v0    # "actDialog":Landroid/app/AlertDialog;
    .restart local v1    # "button":Landroid/widget/Button;
    .restart local v3    # "len":I
    :cond_3
    if-nez v3, :cond_5

    .line 431
    sget-boolean v4, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v4, :cond_4

    const-string v4, "Onrestore disable Set button"

    invoke-direct {p0, v4}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 432
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 434
    :cond_5
    sget-boolean v4, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v4, :cond_6

    const-string v4, "Onrestore enable Set button"

    invoke-direct {p0, v4}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 435
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
