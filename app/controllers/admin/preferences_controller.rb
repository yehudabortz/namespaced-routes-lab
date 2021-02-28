class Admin::PreferencesController < ApplicationController

    def index
        @preference = Preference.last
    end

    def create
        preference = Preference.create(preference_params)
        redirect_to preferences_path
    end

    def update
        preference = Preference.update(preference_params)
        redirect_to preferences_path
    end

    private

    def preference_params

        params.require(:preference).permit(:allow_create_artists, :allow_create_songs)
    end
    
end
