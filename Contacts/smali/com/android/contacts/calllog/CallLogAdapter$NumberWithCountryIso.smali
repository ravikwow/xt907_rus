.class final Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NumberWithCountryIso"
.end annotation


# instance fields
.field public final countryIso:Ljava/lang/String;

.field public final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->number:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->countryIso:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    instance-of v2, p1, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 88
    check-cast v0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    .line 89
    .local v0, "other":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->number:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->countryIso:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->countryIso:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->number:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->countryIso:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;->countryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
